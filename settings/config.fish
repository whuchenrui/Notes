# content has to be in .config/fish/config.fish
# if it does not exist, create the file
setenv SSH_ENV $HOME/.ssh/environment

function fissh-agent                                                                                                                                                                    
    echo "Initializing new SSH agent ..."
    ssh-agent -c | sed 's/^echo/#echo/' > $SSH_ENV
    echo "succeeded"
    chmod 600 $SSH_ENV 
    . $SSH_ENV > /dev/null
    ssh-add
end

function test-identity                                                                                                                                                                
    ssh-add -l | grep "The agent has no identities" > /dev/null
    if [ $status -eq 0 ]
        ssh-add
        if [ $status -eq 2 ]
            fissh-agent 
        end
    end
end

if [ -n "$SSH_AGENT_PID" ] 
    ps -ef | grep $SSH_AGENT_PID | grep ssh-agent > /dev/null
    if [ $status -eq 0 ]
        test-identity
    end  
else
    if [ -f $SSH_ENV ]
        . $SSH_ENV > /dev/null
    end  
    ps -ef | grep $SSH_AGENT_PID | grep -v grep | grep ssh-agent > /dev/null
    if [ $status -eq 0 ]
        test-identity
    else 
        fissh-agent
    end  
end

set -gx PATH /Users/ruichn/.rbenv/shims /apollo/env/SDETools/bin /Users/ruichn /Users/ruichn/bin /usr/local/bin /usr/bin /bin /usr/sbin /sbin
set -gx BRAZIL_CLI_BIN /apollo/env/SDETools/bin
cd ~
