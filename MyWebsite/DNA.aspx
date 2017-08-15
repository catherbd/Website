<%@ Page Title="DNA" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="DNA.aspx.cs" Inherits="DNA" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
     <div id="content">
    <h2>DNA Replication</h2>
         <img alt="DNA" src="DNArep.jpg" />     
    <p>
        The structure of DNA lends itself easily to DNA replication. Each side of the double helix runs in opposite (anti-parallel) directions. The beauty of this structure is that it can unzip down the middle and each side can serve as a pattern or template for the other side (called semi-conservative replication). However, DNA does not unzip entirely. It unzips in a small area called a replication fork, which then moves down the entire length of the molecule.<br/><br/>

    Let's look at the details:<br/>

    1. An enzyme called DNA gyrase makes a nick in the double helix and each side separates<br/>
    2. An enzyme called helicase unwinds the double-stranded DNA<br/>
    3. Several small proteins called single strand binding proteins (SSB) temporarily bind to each side and keep them separated<br/>
    4. An enzyme complex called DNA polymerase "walks" down the DNA strands and adds new nucleotides to each strand. The nucleotides pair with the complementary nucleotides on the existing stand (A with T, G with C).<br/>
    5. A subunit of the DNA polymerase proofreads the new DNA<br/>
    6. An enzyme called DNA ligase seals up the fragments into one long continuous strand<br/>
    7. The new copies automatically wind up again<br/><br/>

        Different types of cells replicated their DNA at different rates. Some cells constantly divide, like those in your hair and fingernails and bone marrow cells. Other cells go through several rounds of cell division and stop (including specialized cells, like those in your brain, muscle and heart). Finally, some cells stop dividing, but can be induced to divide to repair injury (such as skin cells and liver cells). In cells that do not constantly divide, the cues for DNA replication/cell division come in the form of chemicals. These chemicals can come from other parts of the body (hormones) or from the environment. <br/><br/>
      </p>
 <h2 style="color:brown;">Animal vs. Plant DNA</h2>
    <p>
        The DNA of all living organisms has the same structure and code, although some viruses use RNA as the information carrier instead of DNA. Most animals have two copies of each chromosome. In contrast, plants may have more than two copies of several chromosomes, which usually arise from errors in the distribution of the chromosomes during cell reproduction. In animals, this type of error usually causes genetic diseases that are usually fatal. For some unknown reasons, this type of error is not as devastating to plants.
    </p>
        </div>
</asp:Content>

