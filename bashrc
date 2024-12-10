# .bashrc


# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


# User specific aliases and functions

alias ls="ls -v --color=auto"
alias les="less -S"
alias ld="ls -v -d --color=auto"
alias ll="ls -a -lh -v"
alias unmask="perl -pe '/^[^>]/ and \$_=uc'"
alias lt="ls -lh -t -r"
alias la="ls -a -v"
alias rm="rm -i"
alias c="clear"
alias qmod_us="qstat -u $USER|grep ' s '|awk '{print \"qmod -us \"$1}'|sh;qstat -u $USER|grep ' hqw '|awk '{print \"qrls \"$1}'|sh;"

alias qs="/bin/ps ux --sort=pcpu,pmem,user,pid | cat"
alias pa="/bin/ps uxa --sort=pcpu,pmem,user,pid | cat"
alias le="less -i"
alias grep='grep --color=auto'

alias top.my="top -u $USER"


##alias ssh.soft="ssh $USER@software-install"
##alias ssh.ngb="ssh cngb-oxcompute-4"
alias ssh.load="ssh cngb-mountpoint-1"
alias ssh.soft="ssh $USER@cngb-software-0-1"
alias ssh.ngb="ssh cngb-xcompute-0-4"

alias zsh='[ -e /usr/bin/zsh ] && exec /usr/bin/zsh'

alias tmux.guoqunfei="tmux a -t guoqunfei"

alias qs="qsub -cwd -q st.q -P P18Z10200N0107 -l vf=4.0g,num_proc=1 -binding linear:1"
#alias qs="qsub -cwd -q st.q -P P18Z10200N0107 -l vf=10.0g,num_proc=4 -binding linear:4"
#alias bqs="qsub -cwd -l vf=100g,num_proc=4 -P st_supermem -binding linear:4 -q st_supermem.q"
#alias bqs="qsub -cwd -l vf=50g,num_proc=1 -P P18Z10200N0107 -binding linear:1 "
#alias bqs="qsub -cwd -l vf=50g,num_proc=1 -P st_supermem -binding linear:1 -q st_supermem.q"
#alias bqs="qsub -cwd -l vf=50g,num_proc=1 -P P18Z10200N0107_super -binding linear:1 -q st_supermem.q"
alias bqs="qsub -cwd -l vf=50g,num_proc=4 -P P18Z10200N0107_super -binding linear:4 -q st_supermem.q"

alias rwc="qstat|grep \" r \"|wc -l"
alias jwc="qstat|tail -n +3|wc -l"
alias qst="qstat | egrep -v '^job-ID|^\-' | awk '{if(\$5 != \"qw\" && \$5 != \"Eqw\"){print \$1}}' | while read id; do qstat -j \${id} | egrep 'job_number|virtual_free|vmem' | perl -pe 's/\n/\t/g' | awk 'OFS=\"\t\"{print \$2,\$5,\$12,\$13,\$8}' | sed 's/,\t/\t/g'| sed 's/,$//g'; done"
alias ncdu="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/scan_disk/bin/ncdu"
alias zom="ps -A -o stat,user,ppid,pid,cmd |grep -e "^[Zz]" | sed '1iStat\tuser\tppid\tpid\tcmd' | column -t"

alias work1="cd /hwfssz1/ST_EARTH/P18Z10200N0107/P17Z10200N0101_Metazoa_RNA_Editing/guoqunfei/guoqunfei"
#alias work1-tmp="cd /hwfssz1-tmp/ST_DIVERSITY/P17Z10200N0101_Metazoa_RNA_Editing/USER/guoqunfei"
#alias work2="cd /ldfssz1/ST_DIVERSITY/P17Z10200N0101_Metazoa_RNA_Editing/USER/guoqunfei"
#alias work2="cd /ldfssz1/ST_DIVERSITY/P18Z10200N0107/guoqunfei"
alias work2="cd /ldfssz1/ST_EARTH/P18Z10200N0107/guoqunfei"
alias work3="cd /jdfssz1/ST_EARTH/P18Z10200N0107/guoqunfei"
#alias work4="cd /hwfssz5/ST_BIGDATA/USER/zhanghaorui/02.project/rawData/liji1"
alias work4="cd /hwfssz1/ST_EARTH/P18Z10200N0107/Hirondellea_gigas/guoqunfei"
alias work5="cd /zfssz2/ST_EARTH/P18Z10200N0107/guoqunfei"
alias work6="cd /hwfssz5/ST_EARTH/P18Z10200N0107/guoqunfei"
alias work7="cd /jdfssz1/ST_EARTH/P18Z10200N0100/guoqunfei"


alias soft="cd /ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/local"
alias soft1="cd /hwfssz1/ST_EARTH/Reference/ST_DIVERSITY/PUB/USER/guoqunfei"
alias cnsa="cd /zfssz6/BIGDATA_WAREHOUSE/bigdata_ods/for_cngb/cnsa/upload/guoqunfei"
alias sshbox1="ssh guoqunfei@10.53.34.1"
alias sshbox2="ssh guoqunfei@10.53.34.2"
#alias shiyue="cd /hwfssz1/ST_EARTH/P18Z10200N0107/P17Z10200N0101_Metazoa_RNA_Editing/USER/guoqunfei/shiyue"
#alias tools="cd /ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/shiyue"


## simple commands ##
alias N50="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/local/Python-3.8.1/bin/python ~/bin/pipeline/genome/stat_N50.py --f"

#alias git="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/miniconda3/bin/git"

#alias ld1="lfs quota -gh ST_DIVERSITY /ldfssz1"
#alias hw1="df -h /hwfssz1/ST_EARTH/P18Z10200N0107/P17Z10200N0101_Metazoa_RNA_Editing"
#alias zf3="lfs quota -gh ST_DIVERSITY /zfssz3"
#alias asize="df -h /hwfssz1/ST_EARTH/P18Z10200N0107/P17Z10200N0101_Metazoa_RNA_Editing; lfs quota -gh st_p18z10200n0107 /ldfssz1/ST_DIVERSITY; df -h /jdfssz1/ST_EARTH/P18Z10200N0107"
#alias asize="echo \"test\"|while read p;do df -h /hwfssz1/ST_EARTH/P18Z10200N0107/P17Z10200N0101_Metazoa_RNA_Editing | sed 's#hwfssz1.cngb.sz.hpc:/hwfssz1/ST_EARTH#hwfssz1:P17Z10200N0101_Metazoa_RNA_Editing#g' |awk '{print \$1\"\t\"\$2\"\t\"\$3\"\t\"\$4\"\t\"\$5}'|sed 's#Filesystem#Path#g' ; df -h /hwfssz1/ST_EARTH/Reference/ST_DIVERSITY | awk 'NR >= 2 {print \"hwfssz1:PUB\t\"\$2\"\t\"\$3\"\t\"\$4\"\t\"\$5}'; lfs quota -gh st_p18z10200n0107 /ldfssz1/ST_DIVERSITY |awk 'NR == 4 && gsub(/T/,\"\") {printf \"ldfssz1:P18Z10200N0107\t\"\$2\"T\t\"\$1\"T\t\"\$2-\$1\"T\t\"\"%.2f%\n\",\$1/\$2*100}';lfs quota -gh ST_DIVERSITY /ldfssz1/ST_DIVERSITY | awk 'NR == 4 && gsub(/T/,\"\") {printf \"ldfssz1:PUB\t\"\$2\"T\t\"\$1\"T\t\"\$2-\$1\"T\t\"\"%.2f%\n\",\$1/\$2*100}';df -h /jdfssz1/ST_EARTH/P18Z10200N0107 | awk 'NR >= 2 {print \"jdfssz1:P18Z10200N0107\t\"\$2\"\t\"\$3\"\t\"\$4\"\t\"\$5}';done | column -t"
alias asize="sh /home/guoqunfei/bin/DiskScan/bin/allusedisk.sh"
alias lsize="lfs quota -uh guoqunfei /zfssz2/ST_EARTH/P18Z10200N0107/guoqunfei/"

#alias pyl="cd /ldfssz1/ST_DIVERSITY/P17Z10200N0101_Metazoa_RNA_Editing/USER/guoqunfei/panyouliang"

alias row2col="awk '{for(i=1;i<=NF;i=i+1){a[NR,i]=\$i}}END{for(j=1;j<=NF;j++){str=a[1,j];for(i=2;i<=NR;i++){str=str\"\t\"a[i,j]}print str}}'"

# added by Anaconda3 5.3.0 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$(CONDA_REPORT_ERRORS=false '/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    \eval "$__conda_setup"
#else
#    if [ -f "/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/anaconda3/etc/profile.d/conda.sh" ]; then
#        . "/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/anaconda3/etc/profile.d/conda.sh"
#        CONDA_CHANGEPS1=false conda activate base
#    else
#        \export PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/anaconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda init <<<

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


## Mpha T2T simple commands ##
alias qv="sh /jdfssz1/ST_EARTH/P18Z10200N0107/guoqunfei/04.Mpha_T2T/bin/pipeline/QV.sh"
alias aconda="source /ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/miniconda3/conda.sh"
alias pairtools="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/miniconda3/bin/pairtools"
alias bgzip="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/miniconda3/bin/bgzip"
alias cooler="/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/miniconda3/bin/cooler"

export PATH=/ldfssz1/ST_EARTH/Reference/ST_DIVERSITY/USER/guoqunfei/src/03.Genome.annotation/node-v14.15.0-linux-x64/bin:$PATH

alias orf_gff="perl /hwfssz1/ST_EARTH/P18Z10200N0107/P17Z10200N0101_Metazoa_RNA_Editing/liqiye/PC_PA_UN/bin/annotation/personal/combine/check_orf_for_gff.pl"
