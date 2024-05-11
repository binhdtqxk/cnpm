package entity;
public class Product {
	private String imgOfShoe;
	private String typeOfShoe;
	private String nameOfShoe;
	private int idOfShoe;
	private int priceOfShoe;
	public Product(String imgOfShoe, String typeOfShoe, String nameOfShoe, int idOfShoe, int priceOfShoe) {
		super();
		this.imgOfShoe = imgOfShoe;
		this.typeOfShoe = typeOfShoe;
		this.nameOfShoe = nameOfShoe;
		this.idOfShoe = idOfShoe;
		this.priceOfShoe = priceOfShoe;
	}

	public Product(String imgOfShoe, String typeOfShoe, String nameOfShoe, int priceOfShoe) {
		this.imgOfShoe = imgOfShoe;
		this.typeOfShoe = typeOfShoe;
		this.nameOfShoe = nameOfShoe;
		this.priceOfShoe = priceOfShoe;
	}

	public Product() {
		// TODO Auto-generated constructor stub
	}
	public String getImgOfShoe() {
		return imgOfShoe;
	}
	public void setImgOfShoe(String imgOfShoe) {
		this.imgOfShoe = imgOfShoe;
	}
	public String getTypeOfShoe() {
		return typeOfShoe;
	}
	public void setTypeOfShoe(String typeOfShoe) {
		this.typeOfShoe = typeOfShoe;
	}
	public String getNameOfShoe() {
		return nameOfShoe;
	}
	public void setNameOfShoe(String nameOfShoe) {
		this.nameOfShoe = nameOfShoe;
	}
	public int getIdOfShoe() {
		return idOfShoe;
	}
	public void setIdOfShoe(int idOfShoe) {
		this.idOfShoe = idOfShoe;
	}
	public int getPriceOfShoe() {
		return priceOfShoe;
	}
	public void setPriceOfShoe(int priceOfShoe) {
		this.priceOfShoe = priceOfShoe;
	}
	@Override
	public String toString() {
		return "Product [imgOfShoe=" + imgOfShoe + ", typeOfShoe=" + typeOfShoe + ", nameOfShoe=" + nameOfShoe
				+ ", idOfShoe=" + idOfShoe + ", priceOfShoe=" + priceOfShoe + "]";
	}
	
}
