- view: bettsy
  sql_table_name: fteditorialdb.ft_editorial_dashboard_cdc
  fields:

  - dimension_group: date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.end_timestamp

  - dimension: title
    sql: ${TABLE}.title

  - dimension: url
    sql: ${TABLE}.url

  - dimension: uuid
    sql: ${TABLE}.uuid

  - measure: total_page_views
    type: sum
    sql: ${TABLE}.total_page_views

  - measure: user_anonymous_views
    type: sum
    sql: ${TABLE}.anonymous

  - measure: comments_posted
    type: sum
    sql: ${TABLE}.comments

  - dimension: external_referrals
    type: int
    sql: ${TABLE}.external_referrals

  - measure: homepage_referrals
    type: sum
    sql: ${TABLE}.homepage

  - measure: other_internal_referrals
    type: sum
    sql: ${TABLE}.other_internal_referrals

  - measure: other_referrals
    type: sum
    sql: ${TABLE}.other_referrals

  - measure: user_registered_views
    type: sum
    sql: ${TABLE}.registered

  - measure: registrations
    type: sum
    sql: ${TABLE}.registration

  - measure: search_referrals
    type: sum
    sql: ${TABLE}.search

  - measure: section_referrals
    type: sum
    sql: ${TABLE}.section

  - measure: social_media_referrals
    type: sum
    sql: ${TABLE}.social_media

  - measure: social_shares
    type: sum
    sql: ${TABLE}.social_shares

  - measure: user_subscriber_views
    type: sum
    sql: ${TABLE}.subscriber
