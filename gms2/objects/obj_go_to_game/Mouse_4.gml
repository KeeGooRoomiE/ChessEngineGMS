// Go to regolar game


if (active) {global.mode=0}
instance_destroy(self)
with (obj_cell)
{
	if (ID>=64)
		{
			instance_destroy(self)
		}
}
instance_create_layer(x-445,y-445,"Board",obj_console);
