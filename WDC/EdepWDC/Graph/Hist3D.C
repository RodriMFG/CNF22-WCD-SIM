void Hist3D(){

TCanvas *c1 = new TCanvas();
gStyle->SetPalette(kRainBow); // estilo de color

TH2F *hist = new TH2F("hist", "N#acute{u}mero de fotones por cm^{2} ",120, -6000,6000,120,-6000,6000);
	
hist->SetStats(1);
gStyle->SetPalette(57);



TFile *input = new TFile("../build/output.root", "read");

TTree *tree = (TTree*)input->Get("Hits");

double x,y;

tree->SetBranchAddress("fX",&x);
tree->SetBranchAddress("fY",&y);

int entries = tree->GetEntries();
cout << entries << endl;

for (int i =0; i<entries; i++){
tree->GetEntry(i);
hist->Fill(x,y);

//cout << x << ""<< y << endl;

}

input->Close();

	
	const char *textX = "x [mm]";
	const char *textY = "y [mm]";
	const char *textZ = "Frecuencia";
	
	gStyle->SetTitleFontSize(0.07);
	
	hist->GetXaxis()-> SetTitle(textX);
        hist->GetXaxis()-> SetTitleSize(0.06);
	hist->GetXaxis()-> CenterTitle(true);
	hist->GetXaxis()->SetTitleOffset(1.5);
		
	hist->GetYaxis()-> SetTitle(textY);
        hist->GetYaxis()-> SetTitleSize(0.06);
	hist->GetYaxis()->CenterTitle(true);
	hist->GetYaxis()->SetTitleOffset(1.5);
		
	hist->GetZaxis()-> SetTitle(textZ);
        hist->GetZaxis()-> SetTitleSize(0.06);
	hist->GetZaxis()-> CenterTitle(true);
	hist->GetZaxis()->SetTitleOffset(0.8);

//hist->SetContour(1000); // suavisar los limites

hist->Draw("lego2z"); //colz = colorear, lego2 = para que se vea escalinado y con colores, la z es para que re muestre la escala de colores.

























}
