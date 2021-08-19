<!-- Modal -->
<script>
function search(){
	/* if(num==1){
		var doIt = confirm('Do you want to Approve?');
		if (doIt) {
			var f = document.form1;
			f.method = "post";
			f.action = 'Acceptance?reqID=' +ID;
			f.submit();
		} else {
			console.log("Could not update !! ");
		}
	}
	else if(num==2){
		var doIt = confirm('Do you want to Discard?');
		if (doIt) {
			var f = document.form1;
			f.method = "post";
			f.action = 'Discard?reqID=' +ID;
			f.submit();
		} else {
			console.log("Could not update !! ");
		}
	} */
	console.log("LOL");
	var option=document.getElementById("exampleFormControlSelect1").value;
	var val=document.getElementById("search-item").value;
	console.log(val+' '+option);
	switch(option){
		case "Doctor":
			console.log("DoctorAjax");
			$.ajax({
				url:"SearchDoc.jsp",
				type:"post",
				data:"DocName="+val,
				success:function(data){
					$("#show-search-data").html(data);
				}
			});
			break;
		case "Pin":
			$.ajax({
				url:"SearchPin.jsp",
				type:"post",
				data:"Pincode="+val,
				success:function(data){
					$("#show-search-data").html(data);
				}
			});
			break;
		case "Speciality":
			$.ajax({
				url:"SearchSpeciality.jsp",
				type:"post",
				data:"Speciality="+val,
				success:function(data){
					$("#show-search-data").html(data);
				}
			});
			break;
	}
}
</script>
<div class="modal fade bd-example-modal-lg" id="exampleModal"
	tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
	aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header" style="background-color: #00b3b3;">
				<h3 class="modal-title" style="color: white;" id="exampleModalLabel">Search</h3>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true" style="color: white;">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="form-group">
					<label for="exampleFormControlSelect1">Search By</label> <select
						class="form-control" id="exampleFormControlSelect1" required>
						<option value="Doctor">Doctor Name</option>
						<option value="Pin">Pin code</option>
						<option value="Speciality">Speciality</option>
					</select>
				</div>
            
				<div class="input-group mb-3">
					<input type="text" class="form-control"
						placeholder="Doctor name , Pincode , Speciality"
						id="search-item" aria-label="Recipient's username" aria-describedby="button-addon2"  onchange="search()">
					<div class="input-group-append">
						<input class="btn btn-primary" type="button" value="Search" id="button-addon2"  onclick="search()">	
					</div>
				</div>

				<div class="card w-100" id="show-search-data">
				
				</div>
				

			</div>
		</div>
	</div>
</div>
<!-- End of Modal -->