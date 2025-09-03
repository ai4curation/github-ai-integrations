all:
        just test simple-repo
        yes no | just test repo-with-files

test target:
    rm -rf tmp/{{target}} || echo fresh
    cp -pr test/{{target}} tmp
    copier copy template tmp/{{target}}
    cd tmp/{{target}} && just -f ai.just setup-ai-instructions
