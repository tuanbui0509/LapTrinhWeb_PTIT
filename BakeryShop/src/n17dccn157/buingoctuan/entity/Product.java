package n17dccn157.buingoctuan.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "PRODUCT")
public class Product {
	@Id
	@GeneratedValue
	@Column(name = "id_product")
	private int id_product;

	@Column(name = "name")
	private String name;

	@Column(name = "size")
	private float size;

	@Column(name = "price")
	private float price;
	// Mùi vị
	@Column(name = "flavour")
	private String flavour;
	
	@Column(name = "quality")
	private int  quality;

	// kiểu loại bánh 
	@Column(name = "style")
	private String style;

	@Column(name = "image")
	private String image;
	
	@Column(name = "status")
	private boolean status;

	@OneToMany(mappedBy = "product", fetch = FetchType.EAGER)
	private Collection<OrderDetail> details;

	

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public int getId_product() {
		return id_product;
	}

	public void setId_product(int id_product) {
		this.id_product = id_product;
	}

	public Collection<OrderDetail> getDetail() {
		return details;
	}

	public void setDetail(Collection<OrderDetail> details) {
		this.details = details;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public float getSize() {
		return size;
	}

	public void setSize(float size) {
		this.size = size;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getFlavour() {
		return flavour;
	}

	public void setFlavour(String flavour) {
		this.flavour = flavour;
	}

	public String getStyle() {
		return style;
	}

	public void setStyle(String style) {
		this.style = style;
	}

	public Collection<OrderDetail> getDetails() {
		return details;
	}

	public void setDetails(Collection<OrderDetail> details) {
		this.details = details;
	}

	public int getQuality() {
		return quality;
	}

	public void setQuality(int quality) {
		this.quality = quality;
	}
	

}
