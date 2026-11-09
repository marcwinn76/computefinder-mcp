# ComputeFinder open data and MCP

[ComputeFinder](https://computefinder.net/) is an evidence-led directory of where compute comes from, what rules apply to it, and what a proposal in a place actually establishes.

It helps you:

- find a route to compute (providers, funded programmes, offer types)
- understand what is proposed or built in a place (data-centre records, country profiles, planning and community questions)
- follow the evidence behind a claim (news, research notes, claim reviews)

Marc Winn is responsible for editorial policy. Contact: hello@computefinder.net

## What it is not

- Not a GPU price comparison board. There is no live price or availability feed. Each provider page links out to the provider's own conditions.
- Not a ranking. Nobody pays to be listed or placed higher.
- Not a claim that a proposal, a permission, an operating building and usable compute are the same thing.
- Not a place that adds unlike capacity figures together.

If you need a spot price, go to the provider. If you need a careful, dated, source-linked account, you are in the right place.

## Datasets (live counts)

Canonical downloads live on the site, not in this repository. Figures below were read from https://computefinder.net/data and the matching JSON envelopes on **9 November 2026** (Europe/Jersey). Always prefer the live `checked` / `generated_on` dates on each file.

| Dataset | Records | Last checked (site) | Formats |
| --- | ---: | --- | --- |
| Providers | 84 | 2026-10-23 | [JSON](https://computefinder.net/data/providers.json), [CSV](https://computefinder.net/data/providers.csv) |
| Free and funded compute programmes | 52 | 2026-10-17 | [JSON](https://computefinder.net/data/programmes.json), [CSV](https://computefinder.net/data/programmes.csv) |
| Countries and territories | 111 | 2026-10-03 | [JSON](https://computefinder.net/data/countries.json), [CSV](https://computefinder.net/data/countries.csv) |
| Policy register | 17 | 2026-10-02 | [JSON](https://computefinder.net/data/policy.json), [CSV](https://computefinder.net/data/policy.csv) |
| Supply chain | 118 | 2026-10-14 | [JSON](https://computefinder.net/data/supply-chain.json), [CSV](https://computefinder.net/data/supply-chain.csv) |
| News accounts | 77 | 2026-11-04 | [JSON](https://computefinder.net/data/news.json), [CSV](https://computefinder.net/data/news.csv) |
| Export controls and compute thresholds | 23 | 2026-10-03 | [JSON](https://computefinder.net/data/export-controls.json), [CSV](https://computefinder.net/data/export-controls.csv) |
| Grid rules for large loads | 11 | 2026-10-31 | [JSON](https://computefinder.net/data/grid-rules.json), [CSV](https://computefinder.net/data/grid-rules.csv) |
| Large-load demand evidence | 2 | 2026-10-31 | [JSON](https://computefinder.net/data/grid-demand-evidence.json), [CSV](https://computefinder.net/data/grid-demand-evidence.csv) |
| Data centre records | 100 | 2026-10-21 | [JSON](https://computefinder.net/data/data-centre-records.json), [CSV](https://computefinder.net/data/data-centre-records.csv) |
| Research in context | 7 | 2026-10-31 | [JSON](https://computefinder.net/data/research.json), [CSV](https://computefinder.net/data/research.csv) |
| Claim reviews | 4 | 2026-11-06 | [JSON](https://computefinder.net/data/claim-reviews.json), [CSV](https://computefinder.net/data/claim-reviews.csv) |
| Named-campus record links | 1 | 2026-11-01 | [JSON](https://computefinder.net/data/site-record-links.json), [CSV](https://computefinder.net/data/site-record-links.csv) |
| Unscored usefulness evidence samples | 3 | 2026-10-31 | [JSON](https://computefinder.net/data/evidence-samples.json), [CSV](https://computefinder.net/data/evidence-samples.csv) |
| Repair, reuse and retirement evidence | 3 | 2026-11-01 | [JSON](https://computefinder.net/data/lifecycle-evidence.json), [CSV](https://computefinder.net/data/lifecycle-evidence.csv) |
| Selected commercial service scopes | 3 | 2026-10-31 | [JSON](https://computefinder.net/data/services.json), [CSV](https://computefinder.net/data/services.csv) |
| Scoped national standards catalogue evidence | 1 | 2026-10-31 | [JSON](https://computefinder.net/data/standards-evidence.json), [CSV](https://computefinder.net/data/standards-evidence.csv) |
| Frontier AI data centres (Epoch AI) | 93 sites in the reduced export | collected_on 2026-10-02 | [JSON](https://computefinder.net/data/frontier-data-centres.json) (no CSV) |

Also on the data page, outside the main catalogue table:

- Connected project evidence (initial cohort): [project-evidence.json](https://computefinder.net/data/project-evidence.json) (no CSV). ComputeFinder CC BY 4.0 on its compilation and original interpretation only.
- Compute events evidence JSON: [compute-events.json](https://computefinder.net/data/compute-events.json)

Machine-readable discovery:

- Data index: https://computefinder.net/data
- OpenAPI 1.4.0: https://computefinder.net/openapi.json
- Citation guidance for models: https://computefinder.net/llms.txt
- Changelog feed: https://computefinder.net/feed.xml

To download every catalogue file in one go, see [`scripts/fetch.sh`](scripts/fetch.sh). This repository does **not** vendor the JSON/CSV blobs, so counts and evidence dates stay attached to the live site.

## Licence

ComputeFinder's original summaries, labels and compilation rights are licensed under [Creative Commons Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/). You may share and adapt those contributions, including commercially, with appropriate credit to ComputeFinder, a licence link, and an indication of changes. Material is provided as-is without warranties.

This grant covers only rights ComputeFinder controls.

- Third-party material keeps its own licences, attribution and other terms. A source link on a record is **not** permission to republish that source's text or database. Catalogue envelopes currently mark source terms as "not comprehensively cleared".
- Epoch AI's frontier data-centre export is republished under Epoch AI's own CC BY 4.0 terms. Credit Epoch AI and keep the licence link. See https://epoch.ai/data/ai-data-centers
- Berkeley Lab Queued Up figures appear on https://computefinder.net/grid-queues under their CC BY 4.0 terms (credited there). They are not duplicated as a separate file in the main catalogue table above.
- Some pages carry a stricter adaptation licence for a stated scope (for example the 800 VDC explainer uses CC BY-SA 4.0). Record-specific notices win for their scope.
- Private correction submissions, email addresses, website code and branding are excluded.
- Price APIs (Azure Retail Prices, AWS Price List Bulk, and many GPU cloud pricing pages) are marked **not cleared** on https://computefinder.net/sources and are not published here.

Full wording: https://computefinder.net/sources and the licence block on https://computefinder.net/data

See also [`NOTICE.md`](NOTICE.md) and [`LICENSE`](LICENSE).

## How to cite

Cite the specific ComputeFinder page or dataset, the primary source it points to, the date you retrieved it, and ComputeFinder.

Example:

> ComputeFinder, "Free and funded compute programmes", https://computefinder.net/free-compute (dataset: https://computefinder.net/data/programmes.json), retrieved 9 November 2026. Original contributions CC BY 4.0.

For language models, follow https://computefinder.net/llms.txt

## MCP endpoint (verified)

Read-only Model Context Protocol endpoint:

`https://computefinder.net/mcp`

Verified on **9 November 2026** against the site's documented **stateless 2026-07-28 Streamable HTTP** transport.

### What it exposes

- **Resources:** 18 public JSON datasets (same catalogue as `/data`). `resources/list` and `resources/read` work.
- **Resource templates:** provider-by-slug and country-by-slug (`resources/templates/list`).
- **Tools:** none. `tools/list` returns JSON-RPC `-32601 Method not found`.
- **Prompts:** none. `prompts/list` returns `-32601`.
- **Initialize:** `initialize` returns `-32601` on this stateless surface (every request is self-describing under 2026-07-28).
- **Auth:** none observed for public reads (remote-list marker would be unlocked).

Snapshots from the probe (not a substitute for a live call) are in [`mcp/`](mcp/).

### Required request shape (2026-07-28)

Every POST needs:

- Header `MCP-Protocol-Version: 2026-07-28`
- Header `Mcp-Method: <json-rpc-method>`
- For `resources/read`, also `Mcp-Name: <uri>`
- Body `params._meta["io.modelcontextprotocol/protocolVersion"]` equal to the header

Example: list resources with curl

```bash
curl -sS -X POST https://computefinder.net/mcp \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json, text/event-stream' \
  -H 'MCP-Protocol-Version: 2026-07-28' \
  -H 'Mcp-Method: resources/list' \
  -d '{
    "jsonrpc": "2.0",
    "id": 1,
    "method": "resources/list",
    "params": {
      "_meta": {
        "io.modelcontextprotocol/protocolVersion": "2026-07-28",
        "io.modelcontextprotocol/clientInfo": { "name": "example", "version": "0.1.0" },
        "io.modelcontextprotocol/clientCapabilities": {}
      }
    }
  }'
```

### Client config example (remote HTTP MCP)

Exact field names vary by client. The idea is: point a Streamable HTTP / remote MCP connector at the URL above, with no API key.

Cursor-style remote server entry (illustrative):

```json
{
  "mcpServers": {
    "computefinder": {
      "url": "https://computefinder.net/mcp",
      "transport": "streamable-http"
    }
  }
}
```

Claude Desktop / Claude Code custom connector: add a connector whose URL is `https://computefinder.net/mcp` (HTTPS, streamable HTTP, no auth).

A copy of the illustrative block is in [`mcp/client-config.example.json`](mcp/client-config.example.json).

## Why this repository exists

So people can find, cite and wire up ComputeFinder's open data without treating the site as a mystery. Listings that expect a GitHub home (MCP catalogues, awesome lists) can point here. The live evidence still lives on computefinder.net.

## Corrections

Wrong number? https://computefinder.net/corrections
