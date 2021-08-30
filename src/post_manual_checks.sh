#!/bin/bash
echo "sort configs"
./sort_configs.sh
echo "company names mapping (currently manual)"
#./company_names_mapping.sh
#CACHED=1 TRUNC='' ./map_orgs.sh
echo "lower unique"
./lower_unique.sh cncf-config/email-map
echo "json fields"
./check_json_fields.sh github_users.json
echo "forbidden data"
./handle_forbidden_data.sh
echo "consider ./check_spell, ./merge_mappings.sh, ./map_orgs.sh"
