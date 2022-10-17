# The name of this view in Looker is "Lkp Conceptos Valoracion Agrupaciones"
view: lkp_conceptos_valoracion_agrupaciones {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ntt-data-argentina-macro.Valoracion_Clientes.LKP_Conceptos_Valoracion_Agrupaciones`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Codigo Tipo Agrupacion" in Explore.

  dimension: codigo_tipo_agrupacion {
    type: string
    sql: ${TABLE}.Codigo_Tipo_Agrupacion ;;
  }

  dimension: concepto_valoracion_agrupacion_1 {
    type: string
    sql: ${TABLE}.Concepto_Valoracion_Agrupacion_1 ;;
  }

  dimension: concepto_valoracion_agrupacion_2 {
    type: string
    sql: ${TABLE}.Concepto_Valoracion_Agrupacion_2 ;;
  }

  dimension: concepto_valoracion_key {
    type: number
    sql: ${TABLE}.Concepto_Valoracion_Key ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_concepto_valoracion_key {
    type: sum
    sql: ${concepto_valoracion_key} ;;
  }

  measure: average_concepto_valoracion_key {
    type: average
    sql: ${concepto_valoracion_key} ;;
  }

  dimension: concepto_valoracion_tipo_agrupacion {
    type: string
    sql: ${TABLE}.Concepto_Valoracion_Tipo_Agrupacion ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
