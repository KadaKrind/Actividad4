using Actividad4.BSS;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Actividad4.VISTA.PedidoVista
{
    public partial class ListarPedidoVista : Form
    {
        public ListarPedidoVista()
        {
            InitializeComponent();
        }
        PedidoBss bss = new PedidoBss();
        private void ListarPedidoVista_Load(object sender, EventArgs e)
        {
            dataGridView1.DataSource = bss.ListarPedidoBss();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            int IdPedidoSeleccionado = Convert.ToInt32(dataGridView1.CurrentRow.Cells[0].Value);
            EditarPedidoVista fr = new EditarPedidoVista(IdPedidoSeleccionado);
            if (fr.ShowDialog() == DialogResult.OK)
            {
                dataGridView1.DataSource = bss.ListarPedidoBss();
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            AgregarPedidoVista fr = new AgregarPedidoVista();
            if (fr.ShowDialog() == DialogResult.OK)
            {
                dataGridView1.DataSource = bss.ListarPedidoBss();
            }
        }
    }
}
