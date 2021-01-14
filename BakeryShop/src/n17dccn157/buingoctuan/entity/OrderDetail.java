package n17dccn157.buingoctuan.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "ORDER_DETAIL")
public class OrderDetail {
	@Id
	@GeneratedValue
	@Column(name = "id_detail")
	private int id_detail;
	
	@Column(name = "price")
	private float price;
	
	@Column(name = "quality")
	private int quality;
	
	@ManyToOne
	@JoinColumn(name = "id_order")
	private Order order;
	
	@ManyToOne 
	@JoinColumn(name = "id_product")
	private Product product;
	
	public int getId_detail() {
		return id_detail;
	}

	public void setId_detail(int id_detail) {
		this.id_detail = id_detail;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public int getQuality() {
		return quality;
	}

	public void setQuality(int quality) {
		this.quality = quality;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	
	
	
}
