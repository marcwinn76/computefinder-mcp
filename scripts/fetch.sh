#!/usr/bin/env bash
# Fetch ComputeFinder public catalogue exports into ./data/
# Read-only. Does not push, submit or contact anyone.
set -euo pipefail

BASE="${COMPUTEFINDER_BASE:-https://computefinder.net}"
OUT_DIR="${1:-./data}"
mkdir -p "$OUT_DIR"

UA="${COMPUTEFINDER_UA:-ComputeFinderFetch/0.1 (+https://computefinder.net; local mirror script)}"

files=(
  providers.json providers.csv
  programmes.json programmes.csv
  countries.json countries.csv
  policy.json policy.csv
  supply-chain.json supply-chain.csv
  news.json news.csv
  export-controls.json export-controls.csv
  grid-rules.json grid-rules.csv
  grid-demand-evidence.json grid-demand-evidence.csv
  data-centre-records.json data-centre-records.csv
  research.json research.csv
  claim-reviews.json claim-reviews.csv
  site-record-links.json site-record-links.csv
  evidence-samples.json evidence-samples.csv
  lifecycle-evidence.json lifecycle-evidence.csv
  services.json services.csv
  standards-evidence.json standards-evidence.csv
  frontier-data-centres.json
  project-evidence.json
  compute-events.json
)

echo "Fetching from ${BASE}/data into ${OUT_DIR}"
for f in "${files[@]}"; do
  url="${BASE}/data/${f}"
  dest="${OUT_DIR}/${f}"
  echo "  ${f}"
  curl -fsSL -A "$UA" -o "$dest" "$url"
done

# Optional: OpenAPI and llms.txt for local reference
curl -fsSL -A "$UA" -o "${OUT_DIR}/openapi.json" "${BASE}/openapi.json" || true
curl -fsSL -A "$UA" -o "${OUT_DIR}/llms.txt" "${BASE}/llms.txt" || true

echo "Done. Respect each file's licence and attribution fields. See NOTICE.md."
