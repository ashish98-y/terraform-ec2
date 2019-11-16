data "template_file" "inventory"{
	template="${file("myinvent.inventory.tpl")}"
	vars={
		ipaddr="${aws_instance.dbserver.public_ip}"
	}
}
resource "local_file" "inventoryfile"{
	content="${data.template_file.inventory.rendered}"
	filename= "myinventory.inventory"
}
