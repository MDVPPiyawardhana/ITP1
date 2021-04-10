package benefits_default;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Operations {
	
	PreparedStatement prepare; 
	
	public boolean insert(Allowance ob) {
		
		String allowanceID = ob.getAllowanceId();
		String empId = ob.getEmpId();
		String type = ob.getType();
		int unitPrice = ob.getUnitPrice();
		int qty = ob.getQty();
		int total = ob.getTotal();
		
		boolean isSuccess = false;

		
		try {

			String query = "insert into allowance value(?, ?, ?, ?, ?, ?)";
			Connection object = DBUtill.getconnection(); 
			prepare = object.prepareStatement(query);
			
			prepare.setString(1, allowanceID);
			prepare.setString(2, empId);
			prepare.setString(3, type);
			prepare.setInt(4, unitPrice);
			prepare.setInt(5, qty);
			prepare.setInt(6, total);
			
			
			boolean rs = prepare.execute();
			
    		if(rs == true) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return isSuccess;

		
	}
	
	
	
	public Allowance view(String empId) {
		
		
		Allowance obj = new Allowance();
		
		try {
			String query1 = "select * from allowance where empID = ?;";
			Connection object = DBUtill.getconnection();
			prepare = object.prepareStatement(query1);
		
			
			
			prepare.setString(2, empId);
			
			
		ResultSet res =	    prepare.executeQuery();
		
		while(res.next()) {
			
			
			obj.setAllowanceId(res.getString(1));
			obj.setEmpId(res.getString(2));
			obj.setType(res.getString(3));
			obj.setUnitPrice(res.getString(4));
			obj.setQty(res.getString(5));
			obj.setTotal(res.getInt(6));
			
			
		}
		
		
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return obj;
		
	}

}
