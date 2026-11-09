# MCP verification log

Date: 9 November 2026 (Europe/Jersey)
Endpoint: https://computefinder.net/mcp
Transport claimed on /data: stateless 2026-07-28 Streamable HTTP

## Results

| Method | HTTP | Outcome |
| --- | --- | --- |
| GET /mcp | 405 | Allow: POST |
| initialize | 404 | JSON-RPC -32601 Method not found (after correct 2026-07-28 headers/_meta) |
| tools/list | 404 | -32601 Method not found |
| prompts/list | 404 | -32601 Method not found |
| resources/list | 200 | 18 resources |
| resources/templates/list | 200 | 2 templates (provider slug, country slug); serverInfo name=computefinder version=1.0.0 |
| resources/read (claim-reviews.json) | 200 | Returned JSON text with licence envelope and 4 records |
| resources/subscribe | 404 | -32601 |

Earlier failures without `params._meta["io.modelcontextprotocol/protocolVersion"]` matching header `MCP-Protocol-Version` returned 400 Header mismatch, as required by the 2026-07-28 Streamable HTTP spec.

Auth: no credential requested for the calls above.
