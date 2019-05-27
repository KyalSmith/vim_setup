import os
import git


def main():
    python_libs = "sudo apt-get install python3-pip vim curl exuberant-ctags git ack-grep"
    pip_libs = 'sudo pip3 install pep8 flake8 pyflakes isort yapf jedi' 
    cpy_vimrc = 'cp vim_rc_content .vimrc'

    os.system(python_libs) 
    os.system(pip_libs)
    os.system(cpy_vimrc)
    current_dir = os.getcwd()
    
    autoload_path = os.path.join(current_dir, ".vim/autload")
    plugged_path = os.path.join(current_dir, ".vim/plugged/")

    if not os.path.exists(autoload_path):
        os.makedirs(autoload_path)
    if not os.path.exists(plugged_path):
        os.makedirs(plugged_path)

    git.Git(autoload_path).clone("https://github.com/tpope/vim-pathogen.git")
    
    with open("libs.txt", 'r') as file:
        for line in file.readlines():
            val = line.strip("\n")
            print("[+]%s\n" % val)
            git.Git(plugged_path).clone(val)


if __name__ == "__main__":
    main()
