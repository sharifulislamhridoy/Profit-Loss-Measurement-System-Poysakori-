/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poysakori;

import deo.DatabeseHelper;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JComboBox;
import javax.swing.JOptionPane;
import javax.swing.plaf.RootPaneUI;

/**
 *
 * @author shari
 */
public class ProductController {
     public static boolean saveName(String p_name) {
        Connection con = null;
        CallableStatement csmt = null;
        boolean t = true;
        try {
            con = DatabeseHelper.getConnection();
            csmt = con.prepareCall("{call save_coustomer(?)}");
            csmt.setString(1, p_name);
            t = csmt.execute();
        } catch (Exception e) {
            e.printStackTrace();

        } finally {
            try {
                con.close();
                csmt.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }

        }
        return t;
    }
     
      public static boolean saveCoustomerRecoourd(String coustomers_name,String billing_number,String bili_Amount,String d_date,String payment_mode,String paid_amount) {
        Connection con = null;
        CallableStatement csmt = null;
        boolean t = true;
        try {
            con = DatabeseHelper.getConnection();
            csmt = con.prepareCall("{call save_coustomers_record (?,?,?,?,?,?,)}");
            csmt.setString(1, coustomers_name);
            csmt.setString(2, billing_number);
            csmt.setString(3, bili_Amount);
            csmt.setString(4, d_date);
            csmt.setString(5, payment_mode);
            csmt.setString(6, paid_amount); 
           
            t = csmt.execute();
            
            JOptionPane.showMessageDialog(null,"Cridate is Save");
        
        } catch (Exception e) {
            e.printStackTrace();

        } finally {
            try {
                con.close();
                csmt.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }

        }
        return t;
    }
       public static void loadCombo(JComboBox combo) {
        Connection con = null;
        CallableStatement csmt = null;
        ResultSet rs = null;
        try {
            con = DatabeseHelper.getConnection();
            csmt = con.prepareCall("{call listCoustomers ()}");
            csmt.execute();
            rs = csmt.getResultSet();
            List pList = new ArrayList();
            while (rs.next()) {
                pList.add(rs.getString(1));
            }
            combo.setModel(new DefaultComboBoxModel(pList.toArray()));
            combo.insertItemAt("Select One", 0);
            combo.setSelectedIndex(0);
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            con.close();
            csmt.close();
            rs.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
    
}
