var Tab=function(Set){
		var that=this,
			ControlPanelContainerChlid,
			ContentPanelContainerChlid;
		//私有函数，过滤无关的子节点
		var Filter=function(obj){
				var Temp=[];
				var Chlids=obj.childNodes;
				for(chlid in Chlids){
					if(Chlids[chlid].nodeType==1){
						Temp.push(Chlids[chlid]);
						}
					}
				return Temp;
			}
		var AttachIndex=function(){
				for(var i=0,len=ControlPanelContainerChlid.length;i<len;i++)
				{
					ControlPanelContainerChlid[i].setAttribute("Index",i);
					}
			}
		var Tab=function(Index){		
				if(Index===that.Current) return;
				ControlPanelContainerChlid[that.Current].setAttribute("class","");
				ContentPanelContainerChlid[that.Current].style.display="none";
				that.Current=Index;
				ControlPanelContainerChlid[that.Current].setAttribute("class","selecter");
				ContentPanelContainerChlid[that.Current].style.display="block";
			}		
		this.Current=0;//当前tab项的索引
		this.Count;//tab项的总数量
		this.ControlPanelContainer;//tab控制键的父元素
		this.ContentPanelContainer;//tab内容展示项的父元素
		this.Tab=Tab;
		//构造函数
		var Main=function(){
				that.ControlPanelContainer=document.getElementById(Set.ControlPanelID);
				ControlPanelContainerChlid=Filter(that.ControlPanelContainer);
				that.ContentPanelContainer=document.getElementById(Set.ContentPanelID);
				ContentPanelContainerChlid=Filter(that.ContentPanelContainer);
				that.Count=ControlPanelContainerChlid.length;
				AttachIndex();
				that.ControlPanelContainer.onclick=function(e){
						var e=e||window.event;
						var Target=e.target||e.srcElement;
						var TempIndex;
						if(Target.tagName==="A"){
								TempIndex=Target.getAttribute("Index");
								Tab(parseInt(TempIndex));
							}
					}
			}
			Main();
	}

