<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Tech Exercise</title>
</head>
<body>
<f:view>
	<%@ page import="techExerciseOne.OutputResults" %> 
	<p>Here is what is in the database</p>
    <p><% OutputResults temp = new OutputResults(); %>   
	 <%  out.println(temp.runResults());   %> </p>
	
	
	<hr></hr>
	
	 <p>Enter Data here to insert into database!
	 <form name="addToDatabase" method="post" action="AddToProject">
  		<br>User name: <input type="text" name="userName" required></br>
  		<br>Task name: <input type="text" name="taskName" required></br>
  		<br>Desired Finish Date: <input type="text" name="finishDate" required></br>
  		<br>Completed: <input type="text" name="completion" required></br>
  		<input type="submit" value="Submit">
	</form></p>
	
	<hr></hr>
	
	<br><p> Enter the user you want to remove!
	<form name="removeFromDatabase" method="post" action="RemoveFromProject">
  		User name: <input type="text" name="duserName" required><br></br>
  		<input type="submit" value="Submit">
	</form></p>
	 
	<hr></hr>
	
	<br><p> Enter the user you want to update!
	<form name="updateToProject" method="post" action="UpdateToProject">
  		User name: <input type="text" name="uuserName" required><br></br>
  		What do you want to update? 
  		<select name="updateWhat" required>
    		<option value="MYUSER">User Name</option>
    		<option value="TASK">Task</option>
    		<option value="FINISHDATE">Finish Date</option>
    		<option value="COMPLETED">Completion</option>
  		</select> <br></br>
  		What do you want to update it to? <input type="text" name="updateTo" required><br></br>	
  		<input type="submit" value="Submit">
	</form></p>
	
	<hr></hr>
	
	<br><p> Enter what you want to search!
	<form name="searchDatabase" method="post" action="SearchDatabase">
  		What are you looking for? <input type="text" name="searchTerm" required><br></br>
  		What type would it be? 
  		<select name="typeOfSearch" required>
    		<option value="MYUSER">User Name</option>
    		<option value="TASK">Task</option>
    		<option value="FINISHDATE">Finish Date</option>
    		<option value="COMPLETED">Completion</option>
  		</select> <br></br>
  		<input type="submit" value="Submit">
	</form></p>	 







</f:view>
</body>
</html>