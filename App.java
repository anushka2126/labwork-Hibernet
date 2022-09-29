package com.code.Mysqljdpc1;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
public class App 
{
    public static void main( String[] args ) 
    {
    	Configuration con = new Configuration().configure().addAnnotatedClass(Company.class);
    	Configuration con1 = new Configuration().configure().addAnnotatedClass(Items.class);
    	SessionFactory ss = con.buildSessionFactory();
    	Session session = ss.openSession();
    	Transaction t = session.beginTransaction();
    	Company obj =new Company();
    	obj.setCompany_id(101);
    	obj.setCompany_city("Panchkula");
    	obj.setCompany_name("Smart57");
    	Items obj1= new Items();
    	obj1.setCompany_id(101);
    	obj1.setItem_id(501);
    	obj1.setItem_Name("Roll Cream");
    	obj1.setUnitsSold(19);
    	obj.setItems(obj1);
    	obj1.setCompany(obj);
    	session.save(obj);
    	t.commit();
    	session.close();
    	System.out.println( "Hello" );
    }
}
