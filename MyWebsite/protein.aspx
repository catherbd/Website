<%@ Page Title="protein" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="protein.aspx.cs" Inherits="protein" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
     <div id="content">
    <h2>Protein Synthesis</h2>
          <img alt="protein" src="proteinsyn.jpg" />
    <p>The synthesis of proteins takes two steps: transcription and translation. Transcription takes the information encoded in DNA and encodes it into mRNA, which heads out of the cell’s nucleus and into the cytoplasm. During translation, the mRNA works with a ribosome and tRNA to synthesize proteins. </p>
         <h2>Transcription</h2>
         <p>
             The first step in transcription is the partial unwinding of the DNA molecule so that the portion of DNA that codes for the needed protein can be transcribed. Once the DNA molecule is unwound at the correct location, an enzyme called RNA polymerase helps line up nucleotides to create a complementary strand of mRNA. Since mRNA is a single-stranded molecule, only one of the two strands of DNA is used as a template for the new RNA strand. 

             After transcription, the new RNA strand is released and the two unzipped DNA strands bind together again to form the double helix. Because the DNA template remains unchanged after transcription, it is possible to transcribe another identical molecule of RNA immediately after the first one is complete. A single gene on a DNA strand can produce enough RNA to make thousands of copies of the same protein in a very short time. 
         </p>
         <h2>Translation</h2>
         <p>
             In translation, mRNA is sent to the cytoplasm, where it bonds with ribosomes, the sites of protein synthesis. Ribosomes have three important binding sites: one for mRNA and two for tRNA. The two tRNA sites are labeled the A site and P site.<br/>
             Once the mRNA is in place, tRNA molecules, each associated with specific amino acids, bind to the ribosome in a sequence defined by the mRNA code. tRNA molecules can perform this function because of their special structure. tRNA is made up of many nucleotides that bend into the shape of a cloverleaf. At its tail end, tRNA has an acceptor stem that attaches to a specific amino acid. At its head, tRNA has three nucleotides that make up an anticodon.<br/> 
             An anticodon pairs complementary nitrogenous bases with mRNA. For example if mRNA has a codon AUC, it will pair with tRNA’s anticodon sequence UAG. tRNA molecules with the same anticodon sequence will always carry the same amino acids, ensuring the consistency of the proteins coded for in DNA.<br/> 
             Translation begins with the binding of the mRNA chain to the ribosome. The first codon, which is always the start codon methionine, fills the P site and the second codon fills the A site. The tRNA molecule whose anticodon is complementary to the mRNA forms a temporary base pair with the mRNA in the A site. A peptide bond is formed between the amino acid attached to the tRNA in the A site and the methionine in the P site.<br/>
            The ribosome now slides down the mRNA, so that the tRNA in the A site moves over to the P site, and a new codon fills the A site. (One way to remember this is that the A site brings new amino acids to the growing polypeptide at the P site.) The appropriate tRNA carrying the appropriate amino acid pairs bases with this new codon in the A site. A peptide bond is formed between the two adjacent amino acids held by tRNA molecules, forming the first two links of a chain.<br/>
            The ribosome slides again. The tRNA that was in the P site is let go into the cytoplasm, where it will eventually bind with another amino acid. Another tRNA comes to bind with the new codon in the A site, and a peptide bond is formed between the new amino acid to the growing peptide chain.<br/>
            The process continues until one of the three stop codons enters the A site. At that point, the protein chain connected to the tRNA in the P site is released. Translation is complete.<br/>
         </p>
        </div>
</asp:Content>

