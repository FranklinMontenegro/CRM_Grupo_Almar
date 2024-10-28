using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Threading.Tasks;


namespace CRM.App.Pages
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class ProspectoListPage : ContentPage
    {
        public ObservableCollection<string> Items { get; set; }

        public ProspectoListPage()
        {
            //InitializeComponent();
            
        }

        //async void Handle_ItemTapped(object sender, ItemTappedEventArgs e)
        //{
        //    if (e.Item == null)
        //        return;

        //    await DisplayAlert("Item Tapped", "An item was tapped.", "OK");

        //    //Deselect Item
        //    ((ListView)sender).SelectedItem = null;
        //}
    }
}
