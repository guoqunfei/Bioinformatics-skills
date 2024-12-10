# .bash_profile


# Get the aliases and functions
#if [ -n "$BASH_VERSION" -a -n "PS1" ]; then
#    # include .bashrc if it exits
#    if [ -f ~/.bashrc ]; then
#        . ~/.bashrc
#    fi

#    if [ $HOSTNAME = "cngb-login-0-4.cngb.sz.hpc" ]; then
#        ssh cngb-xcompute-0-4
#    fi

#    if [ $HOSTNAME = "cngb-xcompute-0-4.cngb.sz.hpc" ] && [ -z "$TMUX" ]; then
#        /ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/bin/tmux a -t guoqunfei || /ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/bin/tmux new -s guoqunfei
#    fi
#fi

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi


# auto login tmux
#if [ $HOSTNAME = "cngb-xcompute-0-4.cngb.sz.hpc" ]; then
#    /ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/bin/tmux a -t guoqunfei || /ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/bin/tmux new -s guoqunfei
#fi


#### User specific environment and startup programs

### BASIC ENV ####
#export PATH=$PATH:$HOME/bin

## COLOR ##
#Terminal colours (after installing GNU coreutils)
YN="\[\033[33;1m\]" #mean the color of the USER name is yellow
MT="\[\033[35;1m\]" #mean the color of the time is megenta
CW="\[\033[36;1m\]" #mean the color of the whole path is cyan
GD="\[\033[32;1m\]" #mean the color of the $ is green
IN="\[\033[0m" # mean the shell command is white

export PS1="${YN}\u ${MT}\h ${CW}\w${IN}\n${GD}$ ${IN}\]"

#export PS1="\n\[\e[33m\]\u\[\e[:1m\] \[\e[35m\]\h\[\e[1m\] \[\e[36m\]\w\[\e[1m\]\n\$ "

## GROUPS PATH ##
group1="/hwfssz1/ST_DIVERSITY"
group2="/ldfssz1/ST_DIVERSITY"
group3="/jdfssz1/ST_EARTH"

## Projects PATH ##
project1="P17Z10200N0101_Metazoa_RNA_Editing"
project2="P18Z10200N0107"

## WORK PATH ##
work1="${group1}/${project1}/USER/${USER}"
work2="${group2}/${project1}/USER/${USER}"
work3="${group3}/${project2}/${USER}"

## Software PATH ##
software="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/local"

#export PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/miniconda3/bin:${PATH}"

## Python3.7 PATH ##
#export PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/liji1/local/Python-3.7.3/bin:${PATH}"'
export PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/local/Python-3.8.1/bin:${PATH}"
export LD_LIBRARY_PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/local/Python-3.8.1/lib:${LD_LIBRARY_PATH}"
export C_INCLUDE_PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/local/Python-3.8.1/include:${C_INCLUDE_PATH}"
export PIP_CACHE_DIR=/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/local/Python-3.8.1/test1/

## KmerGenie PATH ##
#export PATH="${software}/KmerGenie/bin:${PATH}"
#export LD_LIBRARY_PATH="${software}/KmerGenie/lib:${LD_LIBRARY_PATH}"

## R PATH ##
##export PATH="/hwfssz1/ST_DIVERSITY/P17Z10200N0101_Metazoa_RNA_Editing/USER/guoqunfei/local/bin/R-3.5.2/bin:${PATH}"
export PATH="${software}/R-3.5.2/bin:${PATH}"
#export PATH="/hwfssz1/ST_MCHRI/STEMCELL/USER/wuliang2/biosoftware/anaconda3/bin:${PATH}"
export C_INCLUDE_PATH="${software}/R-3.5.2/include:${C_INCLUDE_PATH}"
#export PATH="/share/app/R-3.5.2/bin:${PATH}"
export R_LIBS=/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/local/R-3.5.2/lib64/R/library/
#export PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/local/R-4.1.2/bin:${PATH}"
#export R_LIBS=/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/local/R-4.1.2/lib64/R/library/
#export PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/local/R-4.2.0/bin:${PATH}"
#export R_LIBS=/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/local/R-4.2.0/lib64/R/library/

#export C_INCLUDE_PATH="${software}/R-3.5.2/include:${C_INCLUDE_PATH}"
## Blat PATH ##
export PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/bin:${PATH}"

## Blast PATH ##
# export PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/local/ncbi-blast-2.2.26+/bin:${PATH}"

## Tmux PATH ##
#export PATH="${software}/tmux-2.2/bin:${PATH}"

## Jellyfish PATH ##
#export PATH="${software}/jellyfish-2.2.6/bin:${PATH}"

## the useful softwares PATH to install R ##
export PATH="${software}/bzip2-1.0.8/bin:${PATH}"
export PATH="${software}/xz-5.2.4/bin:${PATH}"
export PATH="${software}/pcre-8.39/bin:${PATH}"
export PATH="${software}/curl-7.64.0/bin:${PATH}"
#export PATH="${software}/openssl-1.1.1c/bin:${PATH}"
export PATH="/hwfssz1/ST_EARTH/Reference/ST_DIVERSITY/PUB/USER/zhangpei/bin/openssl1.1.1h/bin:${PATH}"
#export PATH="${software}/cmake-3.15.1-Linux-x86_64/bin:${PATH}"
#export PATH="${software}/SOAPnuke-1.5.6/bin:${PATH}"
#export PATH="${software}/sratoolkit.2.9.6-1-centos_linux64/bin:${PATH}"
#export PATH="/hwfssz1/ST_DIVERSITY/PUB/USER/tanhuishuang/local/PEAT-1.2.4/bin:${PATH}"
#export PATH="{software}/gcc-trunk/bin:${PATH}"

## the useful softwares dynamic-link library PATH to install R ##
export LD_LIBRARY_PATH="${software}/curl-7.64.0/lib:${LD_LIBRARY_PATH}"
export LD_LIBRARY_PATH="${software}/pcre-8.39/lib:${LD_LIBRARY_PATH}"
export LD_LIBRARY_PATH="${software}/xz-5.2.4/lib:${LD_LIBRARY_PATH}"
export LD_LIBRARY_PATH="${software}/bzip2-1.0.8/lib:${LD_LIBRARY_PATH}"
export LD_LIBRARY_PATH="${software}/zlib-1.2.11/lib:${LD_LIBRARY_PATH}"
#export LD_LIBRARY_PATH="${software}/boost_1_70_0/lib:${LD_LIBRARY_PATH}"
#export LD_LIBRARY_PATH="${software}/log4cplus-1.0.3-rc1/lib:${LD_LIBRARY_PATH}"
#export LD_LIBRARY_PATH="${software}/openssl-1.1.1c/lib:${LD_LIBRARY_PATH}"
export LD_LIBRARY_PATH="/hwfssz1/ST_EARTH/Reference/ST_DIVERSITY/PUB/USER/zhangpei/bin/openssl1.1.1h/lib:${LD_LIBRARY_PATH}"
#export LD_LIBRARY_PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/liji1/local/Python-3.7.3/lib:${LD_LIBRARY_PATH}"
#export LD_LIBRARY_PATH="${software}/gcc-trunk/lib64:${LD_LIBRARY_PATH}"
export LD_LIBRARY_PATH="${software}/libffi-3.0.5/lib:${LD_LIBRARY_PATH}"

## Header file PATH ##
export C_INCLUDE_PATH="${software}/zlib-1.2.11/include:${C_INCLUDE_PATH}"
export C_INCLUDE_PATH="${software}/bzip2-1.0.8/include:${C_INCLUDE_PATH}"
export C_INCLUDE_PATH="${software}/xz-5.2.4/include:${C_INCLUDE_PATH}"
export C_INCLUDE_PATH="${software}/pcre-8.39/include:${C_INCLUDE_PATH}"
export C_INCLUDE_PATH="${software}/curl-7.64.0/include:${C_INCLUDE_PATH}"
#export C_INCLUDE_PATH="${software}/boost_1_70_0/include:${C_INCLUDE_PATH}"
#export C_INCLUDE_PATH="${software}/log4cplus-1.0.3-rc1/include:${C_INCLUDE_PATH}"#export C_INCLUDE_PATH="${software}/openssl-1.1.1c/include:${C_INCLUDE_PATH}"
#export C_INCLUDE_PATH="${software}/openssl-1.1.1c/include:${C_INCLUDE_PATH}"
export C_INCLUDE_PATH="/hwfssz1/ST_EARTH/Reference/ST_DIVERSITY/PUB/USER/zhangpei/bin/openssl1.1.1h/include:${C_INCLUDE_PATH}"
#export C_INCLUDE_PATH="${software}/gcc-trunk/include:${C_INCLUDE_PATH}"

## samtools PATH ##
#export PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/liji1/local/samtools-0.1.19/bin:${PATH}"
#export PATH="/zfssz5/BC_PUB/Software/03.Soft_ALL/samtools-1.7:${PATH}"

## bwa PATH ##
#export PATH="/zfssz5/BC_PUB/Software/03.Soft_ALL/bwa-0.7.16a:${PATH}"

## gff to gtf PATH ##
#export PATH="/hwfssz1/ST_DIVERSITY/P17Z10200N0101_Metazoa_RNA_Editing/USER/zhuyuanzhen/Packages/gffread:$PATH"

####gcc for 4.9
#sap="/hwfssz1/ST_DIVERSITY/PUB/USER/yuhao"
#ver="gcc-4.9.4"
#export C_INCLUDE_PATH="${sap}/local/compilation_toolchain/${ver}/include:${C_INCLUDE_PATH}"
#export CPLUS_INCLUDE_PATH="${C_INCLUDE_PATH}"
#export LD_LIBRARY_PATH="${sap}/local/compilation_toolchain/${ver}/lib64:${LD_LIBRARY_PATH}"
#export LIBRARY_PATH="${LD_LIBRARY_PATH}"
#export PATH="${sap}/local/compilation_toolchain/${ver}/bin:${PATH}"

#export PATH="/share/app/gcc-5.2.0/bin:${PATH}"
#export LD_LIBRARY_PATH="/share/app/gcc-5.2.0/lib64:$LD_LIBRARY_PATH"

export PATH="/share/app/gcc-7.4.0/bin:${PATH}"
export LD_LIBRARY_PATH="/share/app/gcc-7.4.0/lib64:$LD_LIBRARY_PATH"

#export PATH="/share/app/gcc/9.3.0/bin:${PATH}"
#export LD_LIBRARY_PATH="/share/app/gcc/9.3.0/lib64:$LD_LIBRARY_PATH"


## ALLPATHS-LG PATH ##
# export PATH="/zfssz3/NASCT_BACKUP/RD_09A/GROUP2/ifs1/software/allpathslg-52488/bin:${PATH}"
# export C_INCLUDE_PATH="/zfssz3/NASCT_BACKUP/RD_09A/GROUP2/ifs1/software/allpathslg-52488/src:${C_INCLUDE_PATH}"
# export LD_LIBRARY_PATH="/zfssz3/NASCT_BACKUP/RD_09A/GROUP2/ifs1/software/allpathslg-52488/src:${LD_LIBRARY_PATH}"

## git PATH ##
#export PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/local/git-2.9.5/bin:${PATH}"

## blast PATH ##
export PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/miniconda3/envs/SAMap/samap/SAMap-main/ncbi-blast-2.9.0+/bin:${PATH}"

## java PATH ##
#export PATH="/hwfssz1/ST_DIVERSITY/PUB/USER/yuhao/local/compilation_toolchain/jdk-1.8.0.131/bin:${PATH}"
#export PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/liji1/local/jdk-13.0.2/bin:${PATH}"

### the third party components for BUSCO ###
## tblastn && makeblastdb ##
#export PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/local/blast-2.10.0+/bin:${PATH}"
# export PATH="/share/app/blast-2.2.26/bin:${PATH}"

## augustus && etraining && gff2gbSmallDNA.pl && new_species.pl && optimize_augustus.pl ##
#export PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/src/augustus.2.5.5/bin:${PATH}"
#export PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/src/augustus.2.5.5/scripts/:${PATH}"

## hmmsearch ##
#export PATH="/ifs4/BC_PUB/biosoft/pipeline/DNA/DNA_annotation/software/bin/hmmer-3.1b2/bin:${PATH}"
#export PATH="/ldfssz1/ST_DIVERSITY/P18Z10200N0107/liqiye/bin/hmmer-3.1b1/bin:${PATH}"


## sepp ##
#export PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/src/sepp-master/epp-package/sepp/${PATH}"
#export PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/src/sepp-master/sepp-package/sepp/sepp/:${PATH}"

## prodigal ##
#export PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/src/Prodigal-GoogleImport/:${PATH}"

#export BAMTOOLS_DIR="/hwfssz1/ST_DIVERSITY/PUB/USER/zhouyang/software/bamtools-2.4.1"
#export CPPFLAGS="-I $BAMTOOLS_DIR/include/"
#export LDFLAGS="-L $BAMTOOLS_DIR/lib -Wl,-rpath,$BAMTOOLS_DIR/lib"
#export LD_LIBRARY_PATH="/hwfssz1/ST_DIVERSITY/PUB/USER/zhouyang/software/bamtools-2.4.1/lib:$LD_LIBRARY_PATH"
#export LD_LIBRARY_PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/anaconda3/lib:$LD_LIBRARY_PATH"

## ViennaRNA-2.3.5 ##
#export PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/local/ViennaRNA-2.3.5/bin:${PATH}"
#export C_INCLUDE_PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/local/ViennaRNA-2.3.5/include:${C_INCLUDE_PATH}"
#export LD_LIBRARY_PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/local/ViennaRNA-2.3.5/lib:${LD_LIBRARY_PATH}"

## VNCserver PATH ##
#export PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/local/IGV_Linux_2.9.4/download/tigervnc-server-1.1.0-24/bin:${PATH}"

## minimap2 PATH ##
#export PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/src/01.Genome_assembly/minimap2-2.20_x64-linux:${PATH}"

## FastQC ##
#export PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/shiyue/local/fastqc_v0.11.9/FastQC/fastqc:${PATH}"

## shiy ##
#export PATH="/hwfssz1/ST_DIVERSITY/P17Z10200N0101_Metazoa_RNA_Editing/USER/shiyue2/tools/bin:"${PATH}

## Pfam ##
#export PATH="/ldfssz1/ST_DIVERSITY/P17Z10200N0101_Metazoa_RNA_Editing/USER/guoqunfei/21.single_cell/10.Mpha_Hsal/07.KC.analysis/05.mKCs/01.Mpha/pfam/pfam_scan-master/Bio:${PATH}"
#export PATH="/hwfssz1/ST_DIVERSITY/PUB/USER/zhangpei/bin/hmmer-3.1b2/bin:${PATH}"

#export PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/fangqi/local/bio-tool/bowtie2-2.4.4/bin:${PATH}"

## libevent ##
export PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/local/libevent-2.0.22-stable/bin:${PATH}"
export C_INCLUDE_PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/local/libevent-2.0.22-stable/include:${C_INCLUDE_PATH}"
export LD_LIBRARY_PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/local/libevent-2.0.22-stable/lib:${LD_LIBRARY_PATH}"
export PKG_CONFIG_PATH="/usr/lib/pkgconfig"

#export LD_LIBRARY_PATH=/lib64/:$LD_LIBRARY_PATH
export PATH=/share/app/singularity/3.8.1/bin:${PATH}

## cmake ##
#export PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/src/01.Genome_assembly/cmake-3.23.0-rc5-linux-x86_64/bin:${PATH}"
export PATH="/share/app/cmake-3.3.2/bin:${PATH}"

## conda ##
#export PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/miniconda3/bin:${PATH}"

## tRNAscan-SE ##
export PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/local/tRNAscan-SE/bin:${PATH}"
export LD_LIBRARY_PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/local/tRNAscan-SE/lib:${LD_LIBRARY_PATH}"

export PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/local/infernal-1.1.2-linux-intel-gcc/bin:${PATH}"
export LD_LIBRARY_PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/local/infernal-1.1.2-linux-intel-gcc/lib:${LD_LIBRARY_PATH}"


## ORFfinder ##
export LD_LIBRARY_PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/src/09.repeat/libuv-1.x/.libs:${LD_LIBRARY_PATH}"
export LD_LIBRARY_PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/src/09.repeat/nghttp2-1.62.1/lib/.libs:${LD_LIBRARY_PATH}"


## mingz ##
export LD_LIBRARY_PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/src/mingz-1.12/lib:${LD_LIBRARY_PATH}"
