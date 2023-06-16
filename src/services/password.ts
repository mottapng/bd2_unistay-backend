import bcrypt from 'bcrypt';

export const hashPwd = async (pwd: string, salt = 10) => {
  return await bcrypt.hash(pwd, salt);
};

export const authPwd = async (hash: string, pwd: string) => {
  return await bcrypt.compare(pwd, hash);
};