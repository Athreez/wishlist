"""Generate db/seed_bonds.sql from bondscanner_bonds_icon_with_tenure.csv.

Usage: python scripts/import_bonds.py
Re-run any time the csv changes; output is idempotent (ON CONFLICT DO UPDATE).
"""

import csv
import datetime
import decimal
import pathlib
import re

ROOT = pathlib.Path(__file__).resolve().parent.parent
CSV_PATH = ROOT / "bondscanner_bonds_icon_with_tenure.csv"
OUT_PATH = ROOT / "db" / "seed_bonds.sql"

CURRENCY_RE = re.compile(r"[₹,]")


def sql_str(value):
    if value is None or value == "":
        return "NULL"
    escaped = str(value).replace("'", "''")
    return f"'{escaped}'"


def sql_num(value):
    if value is None:
        return "NULL"
    return str(value)


def parse_min_investment(raw):
    cleaned = CURRENCY_RE.sub("", str(raw)).strip()
    # min_investment is BIGINT in the schema, so it must be a whole number.
    return decimal.Decimal(cleaned).to_integral_value()


def parse_yield(raw):
    # bond_yield in the csv is already a percentage, e.g. "6.50%".
    cleaned = str(raw).strip().rstrip("%").strip()
    return decimal.Decimal(cleaned)


def parse_maturity_date(raw):
    # csv dates are DD-MM-YYYY, e.g. "17-04-2030".
    return datetime.datetime.strptime(str(raw).strip(), "%d-%m-%Y").date().isoformat()


def main():
    with CSV_PATH.open(encoding="utf-8-sig", newline="") as f:
        rows = list(csv.DictReader(f))

    statements = []
    for row in rows:
        isin = row["isin"].strip()
        bond_name = row["bond_name"].strip()
        rating = row["rating"].strip()
        bond_yield = parse_yield(row["bond_yield"])
        min_investment = parse_min_investment(row["min_Investment"])
        payout_frequency = row["payout_frequency"].strip()
        logo_url = row["logo_url"].strip()
        detail_url = row["detail_url"].strip()
        tenure = decimal.Decimal(row["tenure"].strip())
        maturity_date = parse_maturity_date(row["maturity_date"])

        statements.append(f"""INSERT INTO bonds (
    isin, bond_name, bond_yield, payout_frequency, maturity_date, min_investment,
    rating, logo_url, detail_url, tenure
) VALUES (
    {sql_str(isin)}, {sql_str(bond_name)}, {sql_num(bond_yield)}, {sql_str(payout_frequency)},
    {sql_str(maturity_date)}, {sql_num(min_investment)}, {sql_str(rating)},
    {sql_str(logo_url)}, {sql_str(detail_url)}, {sql_num(tenure)}
) ON CONFLICT (isin) DO UPDATE SET
    bond_name = EXCLUDED.bond_name,
    bond_yield = EXCLUDED.bond_yield,
    payout_frequency = EXCLUDED.payout_frequency,
    maturity_date = EXCLUDED.maturity_date,
    min_investment = EXCLUDED.min_investment,
    rating = EXCLUDED.rating,
    logo_url = EXCLUDED.logo_url,
    detail_url = EXCLUDED.detail_url,
    tenure = EXCLUDED.tenure;""")

    OUT_PATH.write_text("\n\n".join(statements) + "\n", encoding="utf-8")
    print(f"Wrote {len(statements)} INSERT statements to {OUT_PATH}")


if __name__ == "__main__":
    main()
