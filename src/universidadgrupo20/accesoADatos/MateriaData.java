package universidadgrupo20.accesoADatos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import universidadgrupo20.Entidades.Materia;



  public class MateriaData {
    private Connection con=null;
    
    public MateriaData(){
        
        con = Conexion.getConexion();
    
    }
  
    public void guardarMateria(Materia materia){
   
        String sql="INSERT INTO materia (nombre, anioMateria, activo)+ VALUES(?, ?, ?)";
        
        try {
            PreparedStatement ps=con.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, materia.getNombre());
            ps.setInt(2, materia.getAnioMateria());
            ps.setBoolean(3, materia.isActivo());
            ps.executeUpdate();
            
            ResultSet rs=ps.getGeneratedKeys();
            if(rs.next()){
                materia.setIdMateria(rs.getInt(1));
                JOptionPane.showMessageDialog(null, "Materia Guardada");
            
            }
            ps.close();
            
            
            
            
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Error a acceder a las Materias");
        }
        
    
    }
    
    public void modificarMateria(Materia materia){
        
        String sql="UPDATE materia SET nombre = ?, anioMateria= ?+ WHERE idMateria = ?";
        
        try {
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1, materia.getNombre());
            ps.setInt(2, materia.getAnioMateria());
            ps.setInt(3, materia.getIdMateria());
            int exito = ps.executeUpdate();
            if(exito==1){
                JOptionPane.showMessageDialog(null, "Materia Actualizada");
            
            }
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Error al modificar las Materias");
        }
        
    
    }
    
    public void eliminarMateria(int id){
        String sql="UPDATE materia SET activo = 0 WHERE idMateria = ?";
        try {
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setInt(1, id);
            int eli=ps.executeUpdate();
            if(eli==1){
            
                JOptionPane.showMessageDialog(null, "Materia Eliminada");
            }
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Error al eliminar la Materia");
        }
    
    }
    public Materia buscarMateria(int  id){
        String sql="SELECT nombre, anioMateria FROM materia WHERE idMateria = ? AND activo = 1";
        Materia materia=null;
        try {
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                materia=new Materia();
                materia.setIdMateria(id);
                materia.setNombre(rs.getString("nombre"));
                materia.setAnioMateria(rs.getInt("anioMateria"));
                materia.setActivo(true);
            
            } else {
                JOptionPane.showMessageDialog(null, "No existe la Materia");
            }
            ps.close();
            
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Error a acceder a las Materias");
        }
        return materia;
    }
    
    public ArrayList<Materia> listaMaterias(){
    String sql="SELECT nombre, anioMateria FROM materia WHERE activo = 1";
        ArrayList <Materia> materias=new ArrayList<>();
        try {
            PreparedStatement ps=con.prepareStatement(sql);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Materia materia =new Materia();
                materia.setIdMateria(rs.getInt("idMateria"));
                materia.setNombre(rs.getString("nombre"));
                materia.setAnioMateria(rs.getInt("anioMateria"));
                materia.setActivo(true);
           
                materias.add(materia);
            }
            ps.close();
            
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Lista vacia");
        }
        return materias;
    }
  
  }