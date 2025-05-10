#ifndef COMMANDLINE_HPP_INCLUDED
#define COMMANDLINE_HPP_INCLUDED

#include <vector>
#include <string>

template<class charT>
class CommandLineString {
    std::vector<std::basic_string<charT> > cmdline;
public:
    void set(const charT *cl) {
        cmdline.clear();
        bool dq = false;
        while(*cl) {
            while(!dq && (*cl == (charT)' ' || *cl == (charT)'\t')) cl++;
            if(!*cl) break;
            if(*cl == (charT)'"') {
                dq = !dq;
                cl++;
                continue;
            }
            std::basic_string<charT> tmp;
            while(*cl && 
                (dq || (*cl != (charT)' ' && *cl != (charT)'\t'))) {
                if(*cl == (charT)'"') {
                    dq = !dq;
                    cl++;
                    continue;
                }
                tmp += *cl++;
            }
            cmdline.push_back(tmp);
        }
    }
    void swap(std::vector<std::basic_string<charT> > &newValue) {
        cmdline.swap(newValue);
    }
    const std::vector<std::basic_string<charT> >& get() const {
        return cmdline;
    }
};

#endif // COMMANDLINE_HPP_INCLUDED
