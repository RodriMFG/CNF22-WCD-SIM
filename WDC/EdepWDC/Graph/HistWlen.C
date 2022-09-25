

#include "TH1.h"
#include "TF1.h"
#include "TCanvas.h"
#include "TSystem.h"
#include "TLegend.h"
#include "TLegendEntry.h"
#include "Math/DistFunc.h"
 
 
void HistWlen(){
 
   /* gSystem->Load("libMathMore");*/
 
   // this is the way to force load of MathMore in Cling
   ROOT::Math::MathMoreLibrary::Load();
 
	
	TH1F *hist = new TH1F("hist", "Longitud de onda", 1000, 230 , 700);
	
	TFile *input = new TFile("../build/output.root", "read");

	TTree *tree = (TTree*)input->Get("Photons");

	double x;

	tree->SetBranchAddress("fWlen",&x);


	int entries = tree->GetEntries();
	cout << entries << endl;

	for (int i =0; i<entries; i++){
	tree->GetEntry(i);
	hist->Fill(x);

	//cout << x << ""<< y << endl;

	}

	input->Close();
	
	hist->SetFillColor(kGreen-9); // colot de relleno
	
	

	const char *textX = "";
	const char *textY = "Frecuencia";
	
	gStyle->SetTitleFontSize(0.07);
	
	hist->GetXaxis()-> SetTitle(textX);
        hist->GetXaxis()-> SetTitleSize(0.06);
	hist->GetXaxis()-> CenterTitle(true);
	hist->GetXaxis()->SetTitleOffset(0.85);
		
	hist->GetYaxis()-> SetTitle(textY);
        hist->GetYaxis()-> SetTitleSize(0.06);
	hist->GetYaxis()->CenterTitle(true);
	hist->GetYaxis()->SetTitleOffset(0.8);
	
	
	//gStyle->SetOptFit(1111); 	
   	//gStyle->SetOptStat(200002211);
	
	
	
	
	TF1 *fit = new TF1("fit", "gaus", 9.5, 10.5); // fit function
	fit->SetLineWidth(3);
	fit->SetLineColor(kBlue);
	fit->SetLineStyle(0);
	

	
	
	//fit->SetParameter(0, 40); // para que converga si hay problemas
	//fit->SetParameter(1,5);
	//fit->SetParameter(2,1);
	

	TCanvas *c1 = new TCanvas();
	hist->SetStats(1); // 0= no se muestran las estatisticas
	c1->SetTickx(); // mas ticks
	c1->SetTicky();
	c1->SetGridx();
	c1->SetGridy();
	hist->Draw();
	//fit->Draw();
	hist->Fit("fit");// R = rnage , Q = no data output, 0= no fit draw
	
	
	TLegend* leg =new TLegend(0.6,0.6,0.8,0.8); // medidas
	leg->SetBorderSize(0); // tamaño de borde
	leg->AddEntry(hist, "Longitud de onda", "f"); // l= linea, p= puntos, f= relleno
	leg->AddEntry(fit, "Ajuste", "l");
	leg->Draw();
	
	/*
	
	TLine *l = new TLine(0,20,15,20); // poner una linea
	l->SetLineWidth(2);
	l->SetLineColor(kOrange);
	l->Draw();
	
	double x0 = 6.3;	
	int bin =hist-> FindBin(x0); //encontrar la posicion de y
	double y0 = hist->GetBinContent(bin);
	
	TArrow* arr = new TArrow(8,200, x0,y0); // poner una flecha
	arr->SetArrowSize(0.02);
	arr->SetLineWidth(2);
	arr->SetLineColor(kRed);
	arr->Draw();
	
	
	const char *text = "Punto #frac{a}{b^{x}}";
	TLatex* txt = new TLatex(8,200, text);
	txt->Draw();	
	
	*/
	
	
}

