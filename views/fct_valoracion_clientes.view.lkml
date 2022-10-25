# The name of this view in Looker is "Fct Valoracion Clientes"
view: fct_valoracion_clientes {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ntt-data-argentina-macro.Valoracion_Clientes.FCT_Valoracion_Clientes`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Banca Key" in Explore.

  dimension: banca_key {
    required_access_grants: [ver_columnas]
    type: number
    sql: ${TABLE}.Banca_Key ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_banca_key {
    type: sum
    sql: ${banca_key} ;;
  }

  measure: average_banca_key {
    type: average
    sql: ${banca_key} ;;
  }

  dimension: banco_key {
    type: number
    sql: ${TABLE}.Banco_Key ;;
  }

  dimension: cliente_key {
    type: number
    sql: ${TABLE}.Cliente_Key ;;
  }

  dimension: concepto_valoracion_key {
    type: number
    sql: ${TABLE}.Concepto_Valoracion_Key ;;
  }

  dimension: cuenta_key {
    type: number
    sql: ${TABLE}.Cuenta_Key ;;
  }

  dimension: cuenta_tc_key {
    type: number
    sql: ${TABLE}.Cuenta_TC_Key ;;
  }

  dimension: excluido {
    type: string
    sql: ${TABLE}.Excluido ;;
  }

  dimension: fecha_key {
    type: number
    sql: ${TABLE}.Fecha_Key ;;
  }

  dimension: fuente_valor_key {
    type: number
    sql: ${TABLE}.Fuente_Valor_Key ;;
  }

  dimension: motivo_exclusion {
    type: string
    sql: ${TABLE}.Motivo_Exclusion ;;
  }

  dimension: oficial_cliente_key {
    type: number
    sql: ${TABLE}.Oficial_Cliente_Key ;;
  }

  dimension: paquete_id {
    type: number
    sql: ${TABLE}.Paquete_ID ;;
  }

  dimension: plan_cuentas_key {
    type: number
    sql: ${TABLE}.Plan_Cuentas_Key ;;
  }

  dimension: produco_key {
    type: number
    sql: ${TABLE}.Produco_Key ;;
  }

  dimension: residencia_key {
    type: number
    sql: ${TABLE}.Residencia_Key ;;
  }

  dimension: sector_key {
    type: number
    sql: ${TABLE}.Sector_Key ;;
  }

  dimension: sucursal_cuenta_key {
    type: number
    sql: ${TABLE}.Sucursal_Cuenta_Key ;;
  }

  dimension: sucursal_radicacion_key {
    type: number
    sql: ${TABLE}.Sucursal_Radicacion_Key ;;
  }

  dimension: tipo_valor_relacional_key {
    type: number
    sql: ${TABLE}.Tipo_Valor_Relacional_Key ;;
  }

  dimension: valor_convenio {
    type: number
    sql: ${TABLE}.Valor_Convenio ;;
  }

  dimension: valor_cuenta {
    type: number
    sql: ${TABLE}.Valor_Cuenta ;;
  }

  dimension: valor_propio {
    type: number
    sql: ${TABLE}.Valor_Propio ;;
  }

  dimension: valor_titular {
    type: number
    sql: ${TABLE}.Valor_Titular ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
