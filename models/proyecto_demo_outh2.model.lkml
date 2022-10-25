# Define the database connection to be used for this model.
connection: "ntt_data_argentina_macro"
include: "/views/**/*.view"
label: "Prueba Seguridad"
# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: proyecto_demo_outh2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: proyecto_demo_outh2_default_datagroup

explore: fct_valoracion_clientes {}

explore: lkp_conceptos_valoracion {}

explore: lkp_conceptos_valoracion_agrupaciones {}
