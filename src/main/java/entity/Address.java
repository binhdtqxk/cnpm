package entity;

public class Address {
    private String address;
    private String city;
    private String district;
    private String commune;

    public Address(String address, String city, String district, String commune) {
        this.address = address;
        this.city = city;
        this.district = district;
        this.commune = commune;
    }

    public Address() {

    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getCommune() {
        return commune;
    }

    public void setCommune(String commune) {
        this.commune = commune;
    }
}
