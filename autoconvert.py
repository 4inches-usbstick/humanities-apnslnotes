def exists(fn):
    try: 
        f = open(fn, 'r')
        f.close()
        return True
    except FileNotFoundError:
        return False
import os, glob
with open('tochange.txt', 'r') as f:
    parentcwd = os.getcwd()
    c = f.read().split('\n')
    for i in c:
        #os.chdir(parentcwd)
        #os.chdir(i)
        #print(f'Checking {i}')
        #globe = glob.glob('*.docx')
        #for j in globe:
        #    print(f'    Checking {os.getcwd()}\\{j}')
        #    if exists(f'{j}.pdf') == False:
        #        print('    PDF Not found, converting...')
        #        os.system(f'docx2pdf "{os.getcwd()}\\{j}"')
        print(f'Running in: {os.getcwd()}\\{i}')
        os.system(f'docx2pdf "{os.getcwd()}\\{i}"')

    f.close()
