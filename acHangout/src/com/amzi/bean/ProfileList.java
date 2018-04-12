/***************************************************************************************************
 * ProfileList - is a java bean to hold all variables related to profiles
 * Variables
 * <table>
 * <tr><th>Profile:</th></tr>
 * <tr><td>first name</td><th>last name</td><td>email</td><td>telephone</td><td>description</td></tr>
 * </table>
 * @author      Kai mai
 * @since       1.0
***************************************************************************************************/
package com.amzi.bean;

public class ProfileList {
	private String firstName, lastName, email, telephone, description;

	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}
	public void setlastName (String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}
	public void setEmail (String email) {
		this.email = email;
	}

	public String getTelephone() {
		return telephone;
	}
	public void setTelephone (String telephone) {
		this.telephone = telephone;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription (String description) {
		if(description == null)
			this.description = "";
		else
			this.description = description;
	}
}
