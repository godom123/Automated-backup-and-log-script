# Automated-backup-and-log-script 
Here's a simple automated backup and logging script for Kali Linux, written in Bash. It performs:

    Backup of a target directory.

    Logs each backup operation.

    Stores backups in a time-stamped format.

    Can be scheduled via cron for automation.
________________________________________________________________________________________________________________________________________________________________________________________________________________
Echo defination - The echo command in Linux is used to display a line of text or a variable value in the terminal. It's commonly used in scripts to show messages, print variable values, or write to files.

Basic syntax - echo [OPTION]... [STRING]...

Example - echo "Hello, Kali!"

common option 

| Option | Description                                                                |
| ------ | -------------------------------------------------------------------------- |
| `-n`   | Do **not** output the trailing newline (keeps cursor on the same line).    |
| `-e`   | Enable **interpretation of backslash escapes** (like `\n`, `\t`, etc.).    |
| `-E`   | Disable backslash escape interpretation (default behavior in many shells). |

________________________________________________________________________________________________________________________________________________________________________________________________________________
source definition - The source command is used to execute commands from a file in the current shell (not a new shell). It’s typically used to apply changes from configuration files, like setting environment variables.
Syntax- 
      source filename

Example- export NAME="Alice"

| Use Case           | Description                                                                    |
| ------------------ | ------------------------------------------------------------------------------ |
| `source ~/.bashrc` | Apply changes made to the `.bashrc` configuration file immediately.            |
| `source env.sh`    | Load environment variables defined in `env.sh` into the current shell session. |
| `source script.sh` | Run a shell script and keep any variables or functions it defines.             |

________________________________________________________________________________________________________________________________________________________________________________________________________________
date defination- The date command is used to display or set the system date and time.

Syntax- date [OPTION]... [+FORMAT]

Example- 
date
# Output: Thu Jul 24 12:34:56 UTC 2025

date "+%Y-%m-%d"
# Output: 2025-07-24

date "+%A"
# Output: Thursday

date -s "2025-07-24 14:00:00"
# (Sets the system time to July 24, 2025, 2 PM — needs sudo)

common option and format-

| Option        | Description                                      |
| ------------- | ------------------------------------------------ |
| `date`        | Shows the current date and time.                 |
| `+%Y`         | Displays the **year** (e.g., 2025).              |
| `+%m`         | Displays the **month** (01 to 12).               |
| `+%d`         | Displays the **day of the month**.               |
| `+%H:%M:%S`   | Displays the **time** (hours\:minutes\:seconds). |
| `-s "STRING"` | Set the system date/time (requires root).        |

________________________________________________________________________________________________________________________________________________________________________________________________________________
Read defination- The read command in shell scripting is used to take input from the user or from a file and store it in a variable.

Syntax- read [options] VARIABLE

Example- 
read name
echo "Hello, $name"
# User inputs: Alice
# Output: Hello, Alice

read -p "Enter age: " age
echo "You are $age years old"

read -s -p "Password: " pass
# Input is hidden (good for security)

common option- 
| Use Case                           | Description                                                                  |
| ---------------------------------- | ---------------------------------------------------------------------------- |
| `read name`                        | Waits for the user to input something, and stores it in the variable `name`. |
| `read -p "Enter your name: " name` | Prompts the user with a message, then reads input.                           |
| `read -s password`                 | Reads input **silently** (no characters shown)—used for passwords.           |
| `read -a array`                    | Reads input into an **array** of words.                                      |

________________________________________________________________________________________________________________________________________________________________________________________________________________
mkdir defination- mkdir stands for "make directory". It’s a command used to create a new directory (folder) in a file system.

Syntax- mkdir [OPTION]... DIRECTORY_NAME

Example- 
mkdir new_folder
# Creates a folder called "new_folder" in the current directory.
mkdir -p projects/java/app
# Creates the full directory path, even if intermediate folders don’t exist.
mkdir -v mydir
# Output: mkdir: created directory 'mydir'

common option- 
| Option        | Description                                                                |
| ------------- | -------------------------------------------------------------------------- |
| `-p`          | Creates **parent directories** as needed (no error if they already exist). |
| `-v`          | Prints a message for each created directory (verbose).                     |
| `--mode=MODE` | Sets permissions (file mode) for the new directory.                        |

________________________________________________________________________________________________________________________________________________________________________________________________________________
tar defination- tar stands for "tape archive". It is a command-line utility used to create, view, compress, and extract archive files, typically with the .tar, .tar.gz, or .tgz extensions.

Syntax- tar [OPTIONS] ARCHIVE_NAME FILES...

Example- 
# Create a tar archive
tar -cvf archive.tar folder/
# Create a compressed tar.gz archive
tar -czvf archive.tar.gz folder/
# Extract a tar.gz archive
tar -xzvf archive.tar.gz
# List contents of an archive
tar -tvf archive.tar

common option- 
| Option | Description                                              |
| ------ | -------------------------------------------------------- |
| `-c`   | **Create** a new archive                                 |
| `-x`   | **Extract** files from an archive                        |
| `-t`   | **List** contents of an archive                          |
| `-v`   | **Verbose** mode (shows progress)                        |
| `-f`   | Use **archive file** (must be followed by the file name) |
| `-z`   | Compress/decompress using **gzip** (`.tar.gz` or `.tgz`) |
| `-j`   | Use **bzip2** compression (`.tar.bz2`)                   |
| `-J`   | Use **xz** compression (`.tar.xz`)                       |

file extension-
.tar – Uncompressed archive
.tar.gz or .tgz – Gzipped archive
.tar.bz2 – Bzip2-compressed archive
.tar.xz – XZ-compressed archive

________________________________________________________________________________________________________________________________________________________________________________________________________________
