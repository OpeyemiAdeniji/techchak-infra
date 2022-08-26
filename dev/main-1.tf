# module "Az_Container_Reg" {
#   source = "./modules/Az_Container_Reg"
# }

# module "Az_Postgres" {
#   source = "./dev/modules/Az_Postgres"
#   depends_on = [module.Az_Container_Reg]
# }