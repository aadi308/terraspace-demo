name = "jumper"
vpc_id = <%= output('vpc-service.vpc_service_vpc_public_subnets') %>
# vpc_id = <% depends_on('vpc-service.vpc_service_vpc_public_subnets') %>

# ec2_dependson = <% depends_on('vpc-service.vpc_service_vpc_public_subnets') %>