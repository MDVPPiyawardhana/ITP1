package benefits_default;

public class Allowance {
	
	static int id = autoInc();
	String pre = "A";
	String allowanceId;
	String empId;
	String type;
	int unitPrice, qty, total;
	
	public static int autoInc() {
		if(id == 0)
			id = 10000;
		else
			 id = id + 5;
		return id;
		
	}
	
	public String allowanceId() {
		
		allowanceId = pre + id;
		
		autoInc();
		
		return allowanceId;
		
	}
	
	public int total() {
		
		total = unitPrice * qty;
		return total;
	}


	public String getEmpId() {
		return empId;
	}

	public void setEmpId(String empId) {
		this.empId = empId;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(String unitPrice) {
		this.unitPrice = Integer.parseInt(unitPrice);
	}

	public int getQty() {
		return qty;
	}

	public void setQty(String qty) {
		this.qty = Integer.parseInt(qty);
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public String getAllowanceId() {
		return allowanceId;
	}

	public void setAllowanceId(String allowanceId) {
		this.allowanceId = allowanceId;
	}

}
