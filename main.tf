# Locals
locals {
  ZONE1     = "${var.region}-1"
  ZONE2     = "${var.region}-2"
  ZONE3     = "${var.region}-3"
  SUBNETA1  = "10.101.1.0/24"
  SUBNETA2  = "10.101.2.0/24"
  SUBNETA3  = "10.101.3.0/24"
  SUBNETB1  = "10.202.1.0/24"
  SUBNETB2  = "10.202.1.0/24"
  SUBNETB3  = "10.202.1.0/24"
}

# VPC 1
resource "random_id" "name1" {
  byte_length = 2
}
resource "ibm_is_vpc" "vpc1" {
  name = "${var.prefix}-vpc-${random_id.name1.hex}"
  address_prefix_management = "manual"
}
# VPC 1 - AZ 1
resource "ibm_is_vpc_address_prefix" "addpa1" {
  name = "${var.prefix}-subnet-${random_id.name1.hex}-1"
  vpc  = "${ibm_is_vpc.vpc1.id}"  
  zone = "${local.ZONE1}"
  cidr = "${local.SUBNETA1}"
}
resource "ibm_is_subnet" "subneta1" {
  name  = "${var.prefix}-subnet-${random_id.name1.hex}-1"
  vpc   = "${ibm_is_vpc.vpc1.id}"
  zone  = "${local.ZONE1}"
  ipv4_cidr_block  = "${local.SUBNETA1}"
  provisioner "local-exec" {
    command = "sleep 300"
    when    = "destroy"
  }
}
# VPC 1 - AZ 2
resource "ibm_is_vpc_address_prefix" "addpa2" {
  name = "${var.prefix}-subnet-${random_id.name1.hex}-2"
  vpc  = "${ibm_is_vpc.vpc1.id}"  
  zone = "${local.ZONE2}"
  cidr = "${local.SUBNETA2}"
}
resource "ibm_is_subnet" "subneta2" {
  name  = "${var.prefix}-subnet-${random_id.name1.hex}-2"
  vpc   = "${ibm_is_vpc.vpc1.id}"
  zone  = "${local.ZONE2}"
  ipv4_cidr_block  = "${local.SUBNETA2}"
  provisioner "local-exec" {
    command = "sleep 300"
    when    = "destroy"
  }
}
# VPC 1 - AZ 3
resource "ibm_is_vpc_address_prefix" "addpa3" {
  name = "${var.prefix}-subnet-${random_id.name1.hex}-3"
  vpc  = "${ibm_is_vpc.vpc1.id}"  
  zone = "${local.ZONE3}"
  cidr = "${local.SUBNETA3}"
}
resource "ibm_is_subnet" "subneta3" {
  name  = "${var.prefix}-subnet-${random_id.name1.hex}-3"
  vpc   = "${ibm_is_vpc.vpc1.id}"
  zone  = "${local.ZONE3}"
  ipv4_cidr_block  = "${local.SUBNETA3}"
  provisioner "local-exec" {
    command = "sleep 300"
    when    = "destroy"
  }
}

# VPC 2
resource "random_id" "name2" {
  byte_length = 2
}
# VPC 2 - AZ 1
resource "ibm_is_vpc_address_prefix" "addpb1" {
  name = "${var.prefix}-subnet-${random_id.name2.hex}-1"
  vpc  = "${ibm_is_vpc.vpc1.id}"  
  zone = "${local.ZONE1}"
  cidr = "${local.SUBNETB1}"
}
resource "ibm_is_subnet" "subnetb1" {
  name  = "${var.prefix}-subnet-${random_id.name2.hex}-1"
  vpc   = "${ibm_is_vpc.vpc1.id}"
  zone  = "${local.ZONE1}"
  ipv4_cidr_block  = "${local.SUBNETB1}"
  provisioner "local-exec" {
    command = "sleep 300"
    when    = "destroy"
  }
}
# VPC 2 - AZ 2
resource "ibm_is_vpc_address_prefix" "addpb2" {
  name = "${var.prefix}-subnet-${random_id.name2.hex}-2"
  vpc  = "${ibm_is_vpc.vpc1.id}"  
  zone = "${local.ZONE2}"
  cidr = "${local.SUBNETB2}"
}
resource "ibm_is_subnet" "subnetb2" {
  name  = "${var.prefix}-subnet-${random_id.name2.hex}-2"
  vpc   = "${ibm_is_vpc.vpc1.id}"
  zone  = "${local.ZONE2}"
  ipv4_cidr_block  = "${local.SUBNETB2}"
  provisioner "local-exec" {
    command = "sleep 300"
    when    = "destroy"
  }
}
# VPC 2 - AZ 3
resource "ibm_is_vpc_address_prefix" "addpb3" {
  name = "${var.prefix}-subnet-${random_id.name2.hex}-3"
  vpc  = "${ibm_is_vpc.vpc1.id}"  
  zone = "${local.ZONE3}"
  cidr = "${local.SUBNETB3}"
}
resource "ibm_is_subnet" "subneta3" {
  name  = "${var.prefix}-subnet-${random_id.name2.hex}-3"
  vpc   = "${ibm_is_vpc.vpc1.id}"
  zone  = "${local.ZONE3}"
  ipv4_cidr_block  = "${local.SUBNETB3}"
  provisioner "local-exec" {
    command = "sleep 300"
    when    = "destroy"
  }
}







#resource "ibm_is_vpn_gateway" "VPNGateway1" {
#  name   = "vpn-${random_id.name1.hex}"
#  subnet = "${ibm_is_subnet.subnet1.id}"
#}

#resource "ibm_is_vpn_gateway_connection" "VPNGatewayConnection1" {
#  name          = "vpnconn-${random_id.name1.hex}"
#  vpn_gateway   = "${ibm_is_vpn_gateway.VPNGateway1.id}"
#  peer_address  = "${ibm_is_vpn_gateway.VPNGateway1.public_ip_address}"
#  preshared_key = "VPNDemoPassword"
#  local_cidrs   = ["${ibm_is_subnet.subnet1.ipv4_cidr_block}"]
#  peer_cidrs    = ["${ibm_is_subnet.subnet2.ipv4_cidr_block}"]
#  ipsec_policy  = "${ibm_is_ipsec_policy.example.id}"
#}

#resource "ibm_is_ssh_key" "sshkey" {
#  name       = "${var.ssh_key_name}-${random_id.name1.hex}"
#  public_key = "${var.ssh_public_key}"
#}

#resource "ibm_is_instance" "instance1" {
#  name    = "instance-${random_id.name1.hex}"
#  image   = "${var.image}"
#  profile = "${var.profile}"
#
#  primary_network_interface = {
#    port_speed = "1000"
#    subnet     = "${ibm_is_subnet.subnet1.id}"
#  }
#
#  vpc       = "${ibm_is_vpc.vpc1.id}"
#  zone      = "${local.ZONE1}"
#  keys      = ["${ibm_is_ssh_key.sshkey.id}"]
#  user_data = "${file("nginx.sh")}"
#}

#resource "ibm_is_floating_ip" "floatingip1" {
#  name   = "fip-${random_id.name1.hex}"
#  target = "${ibm_is_instance.instance1.primary_network_interface.0.id}"
#}

#resource "ibm_is_security_group_rule" "sg1_tcp_rule" {
#  depends_on = ["ibm_is_floating_ip.floatingip1"]
#  group      = "${ibm_is_vpc.vpc1.default_security_group}"
#  direction  = "inbound"
#  remote     = "0.0.0.0/0"
#
#  tcp = {
#    port_min = 22
#    port_max = 22
#  }
#}

#resource "ibm_is_security_group_rule" "sg1_icmp_rule" {
#  depends_on = ["ibm_is_floating_ip.floatingip1"]
#  group      = "${ibm_is_vpc.vpc1.default_security_group}"
#  direction  = "inbound"
#  remote     = "0.0.0.0/0"
#
#  icmp = {
#    code = 0
#    type = 8
#  }
#}

#resource "ibm_is_security_group_rule" "sg1_app_tcp_rule" {
#  depends_on = ["ibm_is_floating_ip.floatingip1"]
#  group      = "${ibm_is_vpc.vpc1.default_security_group}"
#  direction  = "inbound"
#  remote     = "0.0.0.0/0"
#
#  tcp = {
#    port_min = 80
#    port_max = 80
#  }
#}




#resource "ibm_is_ipsec_policy" "example" {
#  name                     = "test-ipsec-${random_id.name2.hex}"
#  authentication_algorithm = "md5"
#  encryption_algorithm     = "3des"
#  pfs                      = "disabled"
#}

#resource "ibm_is_ike_policy" "example" {
#  name                     = "test-ike-${random_id.name2.hex}"
#  authentication_algorithm = "md5"
#  encryption_algorithm     = "3des"
#  dh_group                 = 2
#  ike_version              = 1
#}

#resource "ibm_is_vpn_gateway" "VPNGateway2" {
#  name   = "vpn-${random_id.name2.hex}"
#  subnet = "${ibm_is_subnet.subnet2.id}"
#}

#resource "ibm_is_vpn_gateway_connection" "VPNGatewayConnection2" {
#  name           = "vpnconn-${random_id.name2.hex}"
#  vpn_gateway    = "${ibm_is_vpn_gateway.VPNGateway2.id}"
#  peer_address   = "${ibm_is_vpn_gateway.VPNGateway2.public_ip_address}"
#  preshared_key  = "VPNDemoPassword"
#  local_cidrs    = ["${ibm_is_subnet.subnet2.ipv4_cidr_block}"]
#  peer_cidrs     = ["${ibm_is_subnet.subnet1.ipv4_cidr_block}"]
#  admin_state_up = true
#  ike_policy     = "${ibm_is_ike_policy.example.id}"
#}













#resource "ibm_is_instance" "instance2" {
#  name    = "instance-${random_id.name2.hex}"
#  image   = "${var.image}"
#  profile = "${var.profile}"
#
#  primary_network_interface = {
#    port_speed = "1000"
#    subnet     = "${ibm_is_subnet.subnet2.id}"
#  }
#
#  vpc       = "${ibm_is_vpc.vpc2.id}"
#  zone      = "${local.ZONE2}"
#  keys      = ["${ibm_is_ssh_key.sshkey.id}"]
#  user_data = "${file("nginx.sh")}"
#}

#resource "ibm_is_floating_ip" "floatingip2" {
#  name   = "fip-${random_id.name2.hex}"
#  target = "${ibm_is_instance.instance2.primary_network_interface.0.id}"
#}

#resource "ibm_is_security_group_rule" "sg2_tcp_rule" {
#  depends_on = ["ibm_is_floating_ip.floatingip2"]
#  group      = "${ibm_is_vpc.vpc2.default_security_group}"
#  direction  = "inbound"
#  remote     = "0.0.0.0/0"
#
#  tcp = {
#    port_min = 22
#    port_max = 22
#  }
#}

#resource "ibm_is_security_group_rule" "sg2_icmp_rule" {
#  depends_on = ["ibm_is_floating_ip.floatingip2"]
#  group      = "${ibm_is_vpc.vpc2.default_security_group}"
#  direction  = "inbound"
#  remote     = "0.0.0.0/0"
#
#  icmp = {
#    code = 0
#    type = 8
#  }
#}

#resource "ibm_is_security_group_rule" "sg2_app_tcp_rule" {
#  depends_on = ["ibm_is_floating_ip.floatingip2"]
#  group      = "${ibm_is_vpc.vpc2.default_security_group}"
#  direction  = "inbound"
#  remote     = "0.0.0.0/0"
#
#  tcp = {
#    port_min = 80
#    port_max = 80
#  }
#}
