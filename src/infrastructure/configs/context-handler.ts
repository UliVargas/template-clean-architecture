
export default (req: any, res: any) => {
  console.log(res)
  const { status, message, body } = res.req
  res
    .status(status ?? 200)
    .json({
      raw: message || body
    })
}
