#!/bin/env bash
echo -e "\nAdding OtoCLI Command to Bash"
    echo ""
    echo -e "\n# OtoCLI Alias to run command directly on terminal" >> ~/.bash_aliases
    echo -e "alias otocli=' ~/OtoCLI/OtoCLI.sh'" >> ~/.bash_aliases
    echo -e "alias OtoCLI=' ~/OtoCLI/OtoCLI.sh'\n" >> ~/.bash_aliases
    echo "" >> ~/.bash_aliases
    echo ""
    echo "  -----------------------------------------------------------------------"
    echo "  ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
    echo "  ┃---------------------------------------------------------------------┃"
    echo "  ┃ -- ! -- Restart Your Terminal to use the new OtoCLI command -- ! -- ┃"
    echo "  ┃---------------------------------------------------------------------┃"
    echo "  ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
    echo "  -----------------------------------------------------------------------"
    sleep 5