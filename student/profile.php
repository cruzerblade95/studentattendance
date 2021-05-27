<?php

//profile.php

include('header.php');

$student_name = '';
$student_address = '';
$student_emailid = '';
$student_password = '';
$student_class_id = '';
$student_qualification = '';
$student_doj = '';
$student_image = '';
$error_student_name = '';
$error_student_address = '';
$error_student_emailid = '';
$error_student_class_id = '';
$error_student_qualification = '';
$error_student_doj = '';
$error_student_image = '';
$error = 0;
$success = '';

if(isset($_GET['status'])){
	$status = $_GET['status'];
	if($status == "success"){
		$success = '<div class="alert alert-success">Profile Details Change Successfully</div>';
	}
	}

$query = "
SELECT * FROM tbl_student 
WHERE student_id = '".$_SESSION["student_id"]."'
";


$statement = $connect->prepare($query);
$statement->execute();
$result = $statement->fetchAll();

?>

<div class="container" style="margin-top:30px">
  <span><?php echo $success; ?></span>
  <div class="card">
    <form method="post" id="profile_form" enctype="multipart/form-data">
		<div class="card-header">
			<div class="row">
				<div class="col-md-9">Profile</div>
				<div class="col-md-3" align="right">
				</div>
			</div>
		</div>
		<div class="card-body">
			<div class="form-group">
				<div class="row">
					<label class="col-md-4 text-right">Student Name <span class="text-danger">*</span></label>
					<div class="col-md-8">
						<input type="text" name="student_name" id="student_name" class="form-control" disabled/>
						<span class="text-danger"><?php echo $error_student_name; ?></span>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="row">
					<label class="col-md-4 text-right">Address <span class="text-danger">*</span></label>
					<div class="col-md-8">
						<textarea name="student_address" id="student_address" class="form-control" disabled></textarea>
						<span class="text-danger"><?php echo $error_student_address; ?></span>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="row">
					<label class="col-md-4 text-right">Email Address <span class="text-danger">*</span></label>
					<div class="col-md-8">
						<input type="text" name="student_emailid" id="student_emailid" class="form-control" disabled/>
						<span class="text-danger"><?php echo $error_student_emailid; ?></span>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="row">
					<label class="col-md-4 text-right">Class <span class="text-danger">*</span></label>
					<div class="col-md-8">
						<select name="student_class_id" id="student_class_id" class="form-control" disabled>
                			<option value="">Select Class</option>
                			<?php
                			echo load_grade_list($connect);
                			?>
                		</select>
						<span class="text-danger"><?php echo $error_student_class_id; ?></span>
					</div>
				</div>
			</div>
			<!-- <div class="form-group">
				<div class="row">
					<label class="col-md-4 text-right">Image <span class="text-danger">*</span></label>
					<div class="col-md-8">
						<input type="file" name="student_image" id="student_image" disabled/>
						<span class="text-muted">Only .jpg and .png allowed</span><br />
						<span id="error_student_image" class="text-danger"><?php echo $error_student_image; ?></span>
					</div>
				</div>
			</div> -->
		</div>
		<div class="card-footer" align="center">
			<input type="hidden" name="hidden_student_image" id="hidden_student_image" />
			<input type="hidden" name="student_id" id="student_id" />
			<!-- <input type="submit" name="button_action" id="button_action" class="btn btn-success btn-sm" value="Save" /> -->
			<a href="profile_edit.php"><input type="button" class="btn btn-success btn-sm" value="Edit"></a>
		</div>     
    </form>
  </div>
</div>
<br />
<br />
</body>
</html>

<script type="text/javascript" src="js/bootstrap-datepicker.js"></script>
<link rel="stylesheet" href="css/datepicker.css" />

<style>
    .datepicker
    {
      z-index: 1600 !important; /* has to be larger than 1050 */
    }
</style>

<script>
$(document).ready(function(){
	
<?php
foreach($result as $row)
{
?>
$('#student_name').val("<?php echo $row["student_name"]; ?>");
$('#student_emailid').val("<?php echo $row["student_emailid"]; ?>");
$('#student_address').val("<?php echo $row["student_address"]; ?>");
$('#student_class_id').val("<?php echo $row["student_class_id"]; ?>");
$('#student_id').val("<?php echo $row["student_id"];?>");

<?php
}
?>
  
  	$('#student_doj').datepicker({
  		format: "yyyy-mm-dd",
    	autoclose: true
  	});

});
</script>