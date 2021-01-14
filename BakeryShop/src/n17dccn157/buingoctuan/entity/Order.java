package n17dccn157.buingoctuan.entity;

import java.sql.Date;
import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "`ORDER`")
public class Order {
	@Id
	@GeneratedValue
	@Column(name = "id_order")
	private int id_order;
	
	@Column(name = "order_date")
	private Date order_date;
	
	@Column(name = "status")
	private int status;
	
	@OneToMany(mappedBy = "order", fetch = FetchType.EAGER)
	private Collection<OrderDetail> details;
	
	@ManyToOne 
	@JoinColumn(name = "email")
	private Account emails;
	
	public Account getEmails() {
		return emails;
	}

	public void setEmails(Account emails) {
		this.emails = emails;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getId_order() {
		return id_order;
	}

	public void setId_order(int id_order) {
		this.id_order = id_order;
	}

	public Collection<OrderDetail> getDetails() {
		return details;
	}

	public void setDetails(Collection<OrderDetail> detail) {
		this.details = detail;
	}


	public Date getOrder_date() {
		return order_date;
	}

	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}
	
	
}
	
	
	
