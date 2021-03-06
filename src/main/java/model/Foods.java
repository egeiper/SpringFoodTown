package model;
// Generated 01.Eki.2019 10:54:35 by Hibernate Tools 5.2.12.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Foods generated by hbm2java
 */
@Entity
@Table(name = "foods", catalog = "foodtown")
public class Foods implements java.io.Serializable {

	private Integer foodid;
	private String foodname;
	private String foodtext;
	private double foodprice;
	private String foodimage;

	public Foods() {
	}

	public Foods(String foodname, String foodtext, double foodprice, String foodimage) {
		this.foodname = foodname;
		this.foodtext = foodtext;
		this.foodprice = foodprice;
		this.foodimage = foodimage;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "foodid", unique = true, nullable = false)
	public Integer getFoodid() {
		return this.foodid;
	}

	public void setFoodid(Integer foodid) {
		this.foodid = foodid;
	}

	@Column(name = "foodname", nullable = false, length = 65535)
	public String getFoodname() {
		return this.foodname;
	}

	public void setFoodname(String foodname) {
		this.foodname = foodname;
	}

	@Column(name = "foodtext", nullable = false, length = 65535)
	public String getFoodtext() {
		return this.foodtext;
	}

	public void setFoodtext(String foodtext) {
		this.foodtext = foodtext;
	}

	@Column(name = "foodprice", nullable = false, precision = 22, scale = 0)
	public double getFoodprice() {
		return this.foodprice;
	}

	public void setFoodprice(double foodprice) {
		this.foodprice = foodprice;
	}

	@Column(name = "foodimage", nullable = false, length = 65535)
	public String getFoodimage() {
		return this.foodimage;
	}

	public void setFoodimage(String foodimage) {
		this.foodimage = foodimage;
	}

}
