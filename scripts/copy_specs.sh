#!/bin/bash

specs=(
  spec/system/internal/admin_bans_or_warns_user_spec
  spec/system/notifications/notifications_page_spec
  spec/system/internal/admin_manages_organizations_spec
  spec/system/articles/user_visits_article_stats_spec
)
num_copies=50

for spec in ${specs[*]}; do
  for i in $(seq 1 $num_copies); do
    cp "$spec.rb" "$spec-$i.rb"
  done
done
