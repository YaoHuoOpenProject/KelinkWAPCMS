var cruRow=false;
var cruTd=false;
function selectRow(r)
{
	if(cruRow!=false)
	{
		cruRow.style.backgroundColor="";	
		cruRow.style.color="#000000";
	}
	r.style.backgroundColor="#F1ECD6";
	r.style.color="#ffffff";
	cruRow=r;
}