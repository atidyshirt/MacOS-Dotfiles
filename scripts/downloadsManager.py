'''
    this is a script to move files to their respective
    directory in order to save time, this is to be Run
    every time I run ranger (file manager) to autosort
    downloads folder based off extention & move files
    to the corrolating folders in ~/Documents/Files/**
'''
import os
import shutil
from sys import exit
import argparse
from pathlib import Path

verbose = False

 
def main(current_dir: 'Path', file_types: 'list'):
    '''
        function receives Path object ('current_dir') and list of file_types
        deals with far reaching directories first, then sends to move_files()
    '''
    for folder in file_types:
        # check if directory exists, create directory if it does not exist
        if os.path.exists(folder):
            if verbose:
                print(f'{folder}: already exists')
        else:
            os.mkdir(folder)
            if verbose:
                print(f'{folder}: created')

        move_files(current_dir, folder)

def move_files(current_dir: 'Path', folder_name: 'str'):
    '''
        function to move files to directory of file type
            (i.e. "example.csv" to folder "csv")
    '''
    python_folder = '../Documents/Files/Python'
    bash_folder = '../Documents/Files/Bash'

    for file in current_dir.glob("*."+folder_name):
        if folder_name == 'py':
            shutil.move(file.name, python_folder)
        elif folder_name == 'sh':
            shutil.move(file.name, bash_folder)
        else:
            shutil.move(file.name, folder_name+"/"+file.name)
    if verbose:
        print(f'{folder_name} successfully moved')

def del_folder_redirect(current_dir: 'Path', file_types: 'list'):

    '''
        function that if files are redirected (outside of downloads folder)
        it will delete the file path corrolating with this file_types
        not the most efficent approach, however easier to add on to existing
        code
    '''

    for root, dirnames, filenames  in os.walk(current_dir):
        directorys = []
        directorys.append(dirnames)
        for directory in directorys:
            for i in directory:
                if i == 'py' or i == 'sh':
                    os.rmdir(i)
        break

def change_dir(new_dir: 'str'):

    if os.path.isdir(new_dir):
        try:
            os.chdir(new_dir)
            return
        except:
            print(f'Can not open {new_dir}')
    else:
        print(f'{new_dir} does not exist')

    print("Exiting...")
    exit()


if __name__ == "__main__":

    parser = argparse.ArgumentParser(description="Folder Location")
    parser.add_argument('directory', help="enter complete directory location")
    parser.add_argument('-v', dest='verbose',
                            action='store_const',
                            default=False,
                            const=True, help="Verbose output option")

    args = parser.parse_args()
    verbose = args.verbose
    change_dir(args.directory)
    current_dir = Path('.')
    file_types = list(set([x.suffix[1:]
                            for x in current_dir.iterdir()
                            if x.is_file()]))
    if '' in file_types:
        file_types.remove('')

    main(current_dir, file_types)
    del_folder_redirect(current_dir, file_types)
