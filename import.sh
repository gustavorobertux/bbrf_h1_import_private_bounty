USUARIO_HACKERONE="xxxx"
TOKEN_HACKERONE="xxxxxxx/xxxxxxxxxxxxxxxxxx+xxxxxxxxxxx+xxxx="

for i in `seq 1 100` ; do curl -s -g "https://api.hackerone.com/v1/hackers/programs?page%5Bnumber%5D=$i" -u "$USUARIO_HACKERONE:$TOKEN_HACKERONE" | jq --raw-output '.data[] | select(.attributes.state == "soft_launched") | .attributes.handle' | tee -a privados.txt | sed 's/^/bbrf new /g' | sh 2>/dev/null  ; done && for l in $(cat privados.txt); do bbrf use $l && curl -s -g "https://api.hackerone.com/v1/hackers/programs/$l" -u "$USUARIO_HACKERONE:$TOKEN_HACKERONE" | jq --raw-output '.relationships.structured_scopes.data[].attributes | select (.asset_type == "URL" and .eligible_for_bounty == true and .eligible_for_submission and .archived_at == null) | .asset_identifier' -r | sed 's/^/bbrf inscope add /g' | sh 2>/dev/null; done && rm privados.txt
