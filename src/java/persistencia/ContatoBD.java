package persistencia;

import com.thoughtworks.xstream.XStream;
import dominio.Contato;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;

public class ContatoBD {
    
    private static String caminho = "C:\\Users\\User\\Desktop\\thaleslp\\" ;
    
    private static ArrayList<Contato> lista = new ArrayList<Contato>();
    //adiciona um objeto da classe Detento 
    //na lista que simula o banco de dados
    public static void inserir(Contato contato){
        lerXml();
        if (lista.size() == 0){
            contato.setCodigo(1);
        }else{
            int ultimoCodigo = lista.get(lista.size()-1).getCodigo();
            contato.setCodigo(ultimoCodigo + 1);
        }
        lista.add(contato);
        salvarXml();
    }
    
    public static void alterar(Contato contato){
        lerXml();
        excluir(contato.getCodigo());
        inserir(contato);
        salvarXml();
    }
    
   
    public static void excluir(int codigo){
        lerXml();
        for(int i=0; i < lista.size(); i++){
            Contato cadaContato = lista.get(i);
            
           
            if (cadaContato.getCodigo() == codigo){
                lista.remove(i);
                break;
            }
        }
        salvarXml();
    }
    public static ArrayList<Contato> listar(){     
        lerXml();
        //retorna todos os objetos do banco de dados
        return lista;
    }
    
    private static void lerXml(){
        File arquivo=new File(caminho + "Contato.xml");
        if (arquivo.exists()){
            //armazenar XML no vetor
            XStream xstream=new XStream();
            xstream.alias("contato",Contato.class);
            lista = (ArrayList<Contato>) xstream.fromXML(arquivo);
        }else{
            lista = new ArrayList<Contato>();
        }
    }
    
    private static void salvarXml(){
        XStream xstream = new XStream();
        xstream.alias("contato",Contato.class);
        try{
            FileWriter escritor=new FileWriter(caminho + "contato.xml");
            escritor.write( xstream.toXML(lista) );
            escritor.close();
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }
    }
}