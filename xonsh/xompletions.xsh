import builtins

from xonsh.completers._aliases import _add_one_completer
from xonsh.completers.tools import *

# tab completion from argparse
xontrib load argcomplete


$COMPLETIONS_BRACKETS = False
$COMPLETIONS_CONFIRM = True
$COMPLETIONS_DISPLAY = "single"
$AUTO_SUGGEST_IN_COMPLETIONS = False

completers = [
    "adb",
    "alsamixer",
    "ant",
    "aplay",
    "apropos",
    "apt-cache",
    "apt-get",
    "arecord",
    "asciinema",
    "avdmanager",
    "awk",
    "aws",
    "az",
    "baobab",
    "basename",
    "bash",
    "bat",
    "bats",
    "bc",
    "black",
    "brotli",
    "calibre",
    "carapace",
    "cargo",
    "cat",
    "cfdisk",
    "chgrp",
    "chmod",
    "chown",
    "chpasswd",
    "chromium",
    "chroot",
    "chsh",
    "circleci",
    "cksum",
    "clamav-config",
    "clamav-milter",
    "clambc",
    "clamconf",
    "clamd",
    "clamdscan",
    "clamdtop",
    "clamonacc",
    "clamscan",
    "clamsubmit",
    "cmus",
    "code-insiders",
    "code",
    "codecov",
    "comm",
    "conda",
    "conky",
    "consul",
    "cp",
    "csplit",
    "cura",
    "curl",
    "cut",
    "darktable-cli",
    "darktable",
    "dart",
    "date",
    "dc",
    "dd",
    "deno",
    "df",
    "dfc",
    "dict",
    "diff3",
    "diff",
    "dig",
    "dir",
    "dircolors",
    "dirname",
    "dlv",
    "dmenu",
    "dmesg",
    "dms",
    "dnsmasq",
    "docker-compose",
    "docker",
    "dockerd",
    "doctl",
    "dos2unix",
    "downgrade",
    "du",
    "egrep",
    "elvish",
    "env",
    "envsubst",
    "exa",
    "expand",
    "expr",
    "faas-cli",
    "factor",
    "fakechroot",
    "fakeroot",
    "fc-cache",
    "fd",
    "fdisk",
    "ffmpeg",
    "fgrep",
    "file",
    "find",
    "firefox",
    "fish",
    "flutter",
    "fmt",
    "fold",
    "ftp",
    "ftpd",
    "fzf",
    "gatsby",
    "gcloud",
    "gftp",
    "gimp",
    "git",
    "glab",
    "gnome-keyring-daemon",
    "gnome-keyring",
    "gnome-maps",
    "gnome-terminal",
    "go",
    "gofmt",
    "google-chrome",
    "goreleaser",
    "goweight",
    "gparted",
    "gpasswd",
    "gpg",
    "gradle",
    "grep",
    "groupadd",
    "groupdel",
    "groupmems",
    "groupmod",
    "groups",
    "gulp",
    "gunzip",
    "gzip",
    "halt",
    "head",
    "helm",
    "helmsman",
    "hexchat",
    "hexdump",
    "hostid",
    "hostname",
    "htop",
    "http",
    "https",
    "hugo",
    "hwinfo",
    "i3-scrot",
    "i3",
    "i3exit",
    "i3lock",
    "i3status-rs",
    "i3status",
    "id",
    "inkscape",
    "install",
    "ion",
    "java",
    "javac",
    "join",
    "jq",
    "julia",
    "kill",
    "killall",
    "kmonad",
    "kompose",
    "ktlint",
    "kubeadm",
    "kubectl",
    "lf",
    "lightdm",
    "link",
    "ln",
    "lnav",
    "locale",
    "localectl",
    "logname",
    "ls",
    "lsb_release",
    "lsblk",
    "lscpu",
    "lslocks",
    "lslogins",
    "lsmem",
    "lsns",
    "lsusb",
    "lua",
    "lzcat",
    "lzma",
    "make",
    "makepkg",
    "man",
    "mcomix",
    "md5sum",
    "mdbook",
    "meld",
    "micro",
    "minikube",
    "mkdir",
    "mkfifo",
    "mkfs",
    "mknod",
    "mkswap",
    "mktemp",
    "modinfo",
    "modprobe",
    "more",
    "mosh",
    "mount",
    "mousepad",
    "mpv",
    "mv",
    "mvn",
    "nano",
    "nc",
    "ncdu",
    "neomutt",
    "netcat",
    "newman",
    "ng",
    "nice",
    "nl",
    "nmcli",
    "node",
    "nohup",
    "npm",
    "ntpd",
    "nu",
    "nvim",
    "od",
    "openscad",
    "optipng",
    "packer",
    "palemoon",
    "pamac",
    "pandoc",
    "pass",
    "passwd",
    "paste",
    "patch",
    "pathchk",
    "pcmanfm",
    "pgrep",
    "picard",
    "ping",
    "pinky",
    "pkg",
    "pkill",
    "poweroff",
    "pr",
    "prettyping",
    "printenv",
    "ptx",
    "pulumi",
    "pwait",
    "python",
    "qmk",
    "qrencode",
    "qutebrowser",
    "ranger",
    "readlink",
    "reboot",
    "restic",
    "resume-cli",
    "rg",
    "rifle",
    "rm",
    "rmdir",
    "rustc",
    "rustup",
    "scp",
    "scrot",
    "sdkmanager",
    "sed",
    "semver",
    "seq",
    "sftp",
    "sha1sum",
    "sha256sum",
    "shred",
    "shutdown",
    "sleep",
    "sort",
    "speedtest-cli",
    "split",
    "ssh",
    "st",
    "starship",
    "stat",
    "staticcheck",
    "strings",
    "stty",
    "su",
    "sudo",
    "sum",
    "supervisord",
    "svg-term",
    "sync",
    "sysctl",
    "tac",
    "tail",
    "tar",
    "tee",
    "telnet",
    "terraform",
    "tesseract",
    "tinygo",
    "tldr",
    "tmux",
    "toitpkg",
    "top",
    "touch",
    "tr",
    "traefik",
    "tree",
    "tsc",
    "tshark",
    "tsort",
    "tty",
    "umount",
    "uname",
    "unbrotli",
    "unexpand",
    "uniq",
    "unlink",
    "unlzma",
    "unxz",
    "unzip",
    "upx",
    "useradd",
    "userdel",
    "usermod",
    "users",
    "vagrant",
    "vdir",
    "vi",
    "viewnior",
    "vlc",
    "w",
    "watch",
    "watchexec",
    "waypoint",
    "wc",
    "which",
    "who",
    "whoami",
    "wine",
    "wineboot",
    "winepath",
    "wineserver",
    "winetricks",
    "wire",
    "wireshark",
    "woeusb",
    "xargs",
    "xbacklight",
    "xonsh",
    "xz",
    "xzcat",
    "yes",
    "yj",
    "youtube-dl",
    "zcat",
    "zip",
]


@contextual_completer
def _carapace_lazy(context):
    """carapace lazy"""
    if (
        context.command
        and context.command.arg_index > 0
        and context.command.args[0].value in completers
    ):
        builtins.__xonsh__.completers = builtins.__xonsh__.completers.copy()
        exec(
            compile(
                subprocess.run(
                    ["carapace", context.command.args[0].value, "xonsh"],
                    stdout=subprocess.PIPE,
                ).stdout.decode("utf-8"),
                "",
                "exec",
            )
        )
        return builtins.__xonsh__.completers[context.command.args[0].value](context)


_add_one_completer("carapace_lazy", _carapace_lazy, "start")
