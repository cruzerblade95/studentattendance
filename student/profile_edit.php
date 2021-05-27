<?php

//profile.php

include('header.php');

$student_name = '';
$student_address = '';
$student_emailid = '';
$student_password = '';
$student_class_id = '';
// $student_image = '';
$error_student_name = '';
$error_student_address = '';
$error_student_emailid = '';
$error_student_class_id = '';
// $error_student_image = '';
$error = 0;
$success = '';

if(isset($_POST["button_action"]))
{
	// $student_image = $_POST["hidden_student_image"];
	// if($_FILES["student_image"]["name"] != '')
	// {
	// 	$file_name = $_FILES["student_image"]["name"];
	// 	$tmp_name = $_FILES["student_image"]["tmp_name"];
	// 	$extension_array = explode(".", $file_name);
	// 	$extension = strtolower($extension_array[1]);
	// 	$allowed_extension = array('jpg','png');
	// 	if(!in_array($extension, $allowed_extension))
	// 	{
	// 		$error_student_image = "Invalid Image Format";
	// 		$error++;
	// 	}
	// 	else
	// 	{
	// 		$student_image = uniqid() . '.' . $extension;
	// 		$upload_path = 'admin/student_image/' . $student_image;
	// 		move_uploaded_file($tmp_name, $upload_path);
	// 	}
	// }

	if(empty($_POST["student_name"]))
	{
		$error_student_name = "student Name is required";
		$error++;
	}
	else
	{
		$student_name = $_POST["student_name"];
	}

	if(empty($_POST["student_address"]))
	{
		$error_student_address = 'Address is required';
		$error++;
	}
	else
	{
		$student_address = $_POST["student_address"];
	}

	if(empty($_POST["student_emailid"]))
	{
		$error_student_emailid = "Email Address is required";
		$error++;
	}
	else
	{
		if(!filter_var($_POST["student_emailid"], FILTER_VALIDATE_EMAIL))
		{
			$error_student_emailid = "Invalid email format";
			$error;
		}
		else
		{
			$student_emailid = $_POST["student_emailid"];
		}
	}
	if(!empty($_POST["student_password"]))
	{
		$student_password = $_POST["student_password"];
	}

	if(empty($_POST["student_class_id"]))
	{
		$error_student_class_id = 'class is required';
		$error++;
	}
	else
	{
		$student_class_id = $_POST["student_class_id"];
	}

	if($error == 0)
	{
		if($student_password != '')
		{
			$data = array(
				':student_name'			=>	$student_name,
				':student_emailid'		=>	$student_emailid,
				':student_address'		=>	$student_address,
				':student_password'		=>	$student_password,
				':student_class_id'		=>	$student_class_id,
				':student_id'			=>	$_POST["student_id"]
			);
			$query = "
			UPDATE tbl_student 
		      SET student_name = :student_name, 
		      student_emailid = :student_emailid, 
		      student_address = :student_address, 
		      student_password = :student_password, 
		      student_class_id = :student_class_id
		      WHERE student_id = :student_id
			";
		}
		else
		{
			$data = array(
				':student_name'			=>	$student_name,
				':student_emailid'		=>	$student_emailid,
				':student_address'		=>	$student_address,
				':student_class_id'		=>	$student_class_id,
				':student_id'			=>	$_POST["student_id"]
			);
			$query = "
			UPDATE tbl_student 
		      SET student_name = :student_name, 
		      student_emailid = :student_emailid, 
		      student_address = :student_address, 
		      student_class_id = :student_class_id
		      WHERE student_id = :student_id
			";
		}
		$statement = $connect->prepare($query);
		if($statement->execute($data))
		{
			$success = 'success';
			header("Location: http://localhost/studentattendance/student/profile.php?status=".$success);
		}
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
						<input type="text" name="student_name" id="student_name" class="form-control" />
						<span class="text-danger"><?php echo $error_student_name; ?></span>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="row">
					<label class="col-md-4 text-right">Address <span class="text-danger">*</span></label>
					<div class="col-md-8">
						<textarea name="student_address" id="student_address" class="form-control"></textarea>
						<span class="text-danger"><?php echo $error_student_address; ?></span>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="row">
					<label class="col-md-4 text-right">Email Address <span class="text-danger">*</span></label>
					<div class="col-md-8">
						<input type="text" name="student_emailid" id="student_emailid" class="form-control" />
						<span class="text-danger"><?php echo $error_student_emailid; ?></span>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="row">
					<label class="col-md-4 text-right">Password </label>
					<div class="col-md-8">
						<input type="password" name="student_password" id="student_password" class="form-control" placeholder="Leave blank to not change it" />
						<span class="text-danger"></span>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="row">
					<label class="col-md-4 text-right">Class <span class="text-danger">*</span></label>
					<div class="col-md-8">
						<select name="student_class_id" id="student_class_id" class="form-control">
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
						<input type="file" name="student_image" id="student_image" />
						<span class="text-muted">Only .jpg and .png allowed</span><br />
						<span id="error_student_image" class="text-danger"><?php echo $error_student_image; ?></span>
					</div>
				</div>
			</div> -->
		</div>
		<div class="card-footer" align="center">
			<input type="hidden" name="hidden_student_image" id="hidden_student_image" />
			<input type="hidden" name="student_id" id="student_id" />
			<input type="submit" name="button_action" id="button_action" class="btn btn-success btn-sm" value="Save" />
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
  
  	// $('#student_doj').datepicker({
  	// 	format: "yyyy-mm-dd",
    // 	autoclose: true
  	// });

});
</script>