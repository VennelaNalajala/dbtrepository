{% snapshot hosts_snapshot %}

{{
    config(
      target_schema='snapshots',
      unique_key='host_id',
      strategy='check',
      check_cols=['host_name', 'response_rate']
    )
}}

SELECT * FROM {{ ref('stg_hosts') }}

{% endsnapshot %}