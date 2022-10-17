# The name of this view in Looker is "Lkp Conceptos Valoracion"
view: lkp_conceptos_valoracion {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ntt-data-argentina-macro.Valoracion_Clientes.LKP_Conceptos_Valoracion`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Concepto Valoracion Descripcion" in Explore.

  dimension: concepto_valoracion_descripcion {
    type: string
    sql: ${TABLE}.Concepto_Valoracion_Descripcion ;;
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

  dimension: concepto_valoracion_marca_ing_egr {
    type: string
    sql: ${TABLE}.Concepto_Valoracion_Marca_Ing_Egr ;;
  }

  dimension: concepto_valoracion_source {
    type: string
    sql: ${TABLE}.Concepto_Valoracion_Source ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_alta {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Fecha_Alta ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
