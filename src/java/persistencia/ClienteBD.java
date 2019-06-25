package persistencia;

import com.thoughtworks.xstream.XStream;
import dominio.Cliente;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;

public class ClienteBD {
    
    private static String caminho = "C:\\Users\\Zokah\\Desktop\\Mylistener\\Mylistener\\" ;
    
    private static ArrayList<Cliente> lista = new ArrayList<Cliente>();
    public static boolean inserir(Cliente cliente){
        lerXml();
        int n = lista.size();
        if (lista.size() == 0){
            cliente.setCodigo(1);
        }else{
            int ultimoCodigo = lista.get(lista.size()-1).getCodigo();
            cliente.setCodigo(ultimoCodigo + 1);
        }
        lista.add(cliente);
        salvarXml();
        return verfica(n);
    
    }
    
    public static boolean verfica(int n){
       lerXml();
       int teste =lista.size();
        if(n == teste){
            return false;
        }else{
            return true;
        } 
            
    }
    
    public static void alterar(Cliente cliente){
        lerXml();
        excluir(cliente.getCodigo());
        inserir(cliente);
        salvarXml();
    }
    

    public static void excluir(int codigo){
        lerXml();
        for(int i=0; i < lista.size(); i++){
            Cliente C = lista.get(i);
            
            //procura o cliente que tem o CPF igual 
            //Ã  variÃ¡vel "cpf", que tÃ¡ chegando entre
            //os parÃªnteses
            if (C.getCodigo() == codigo){
                lista.remove(i);
                break;
            }
        }
        salvarXml();
    }
    public static ArrayList<Cliente> listar(){     
        lerXml();
        //retorna todos os objetos do banco de dados
        return lista;
    }
    
    private static void lerXml(){
        File arquivo=new File(caminho + "clientes.xml");
        if (arquivo.exists()){
            //armazenar XML no vetor
            XStream xstream=new XStream();
            xstream.alias("cliente",Cliente.class);
            lista = (ArrayList<Cliente>) xstream.fromXML(arquivo);
        }else{
            lista = new ArrayList<Cliente>();
        }
    }
    
    private static void salvarXml(){
        XStream xstream = new XStream();
        xstream.alias("cliente",Cliente.class);
        try{
            FileWriter escritor=new FileWriter(caminho + "clientes.xml");
            escritor.write( xstream.toXML(lista) );
            escritor.close();
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }
    }
    
    
    public static Cliente procuraSessao(String login,String Senha){
        lerXml();
       Cliente Cuser = null;
        for(int i=0; i < lista.size(); i++){
            Cliente C = lista.get(i);
            
            //procura o cliente que tem o CPF igual 
            //Ã  variÃ¡vel "cpf", que tÃ¡ chegando entre
            //os parÃªnteses
            if (C.getUsuario().equals(login) && C.getSenha().equals(Senha)){
                Cuser = C;
                break;
            }
        }
        return Cuser;
        
    }
}