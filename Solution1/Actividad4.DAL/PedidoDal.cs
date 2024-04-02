using Actividad4.MODELOS;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Actividad4.DAL
{
    public class PedidoDal
    {
        public DataTable ListarPedidoDal()
        {
            string consulta = "select * from Pedido";
            DataTable lista = conexion.EjecutarDataTabla(consulta, "tabla");
            return lista;
        }

        public void InsertarPedidoDal(/*int idcliente,*/ Pedido pedido)
        {
            string consulta = "insert into Pedido values('" + pedido.IdPedido + "'," + "'" + pedido.Fecha + "'," + "'" + pedido.Total + "'," + "'completado')";
            conexion.Ejecutar(consulta);    
        }
        public void EditarPedidoDal()
        {

        }
    }
}
