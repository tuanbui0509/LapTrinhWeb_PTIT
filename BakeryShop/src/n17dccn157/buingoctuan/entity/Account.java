package n17dccn157.buingoctuan.entity;

import java.util.Collection;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "ACCOUNT")
public class Account {
	@Id
	@Column(name = "email")
	private String email;

	@Column(name = "user_name")
	private String user_name;

	@Column(name = "fullname")
	private String fullname;

	@Column(name = "password")
	private String password;

	@Column(name = "gender")
	private Boolean gender;

	@Column(name = "image")
	private String image;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "birthday")
	private Date birthday;

	@Column(name = "phone")
	private String phone;

	@Column(name = "Address")
	private String Address;
	
	@ManyToOne 
	@JoinColumn(name = "IdRole")
	private Role roles;
	
	@OneToMany(mappedBy = "emails", fetch = FetchType.EAGER)
	private Collection<Account> emails;
	
	public Collection<Account> getEmails() {
		return emails;
	}

	public void setEmails(Collection<Account> emails) {
		this.emails = emails;
	}

	public Role getRoles() {
		return roles;
	}

	public void setRoles(Role roles) {
		this.roles = roles;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Boolean getGender() {
		return gender;
	}

	public void setGender(Boolean gender) {
		this.gender = gender;
	}
}
