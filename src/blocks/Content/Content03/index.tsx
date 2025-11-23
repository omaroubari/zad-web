import React from 'react'

import RichText from '@/components/RichText'
import { Icon } from '@iconify-icon/react'
import * as motion from 'motion/react-client'
import type { ContentBlock } from '@/payload-types'
import { Variants } from 'motion/react'
export const Content03: React.FC<ContentBlock> = (props) => {
  const { richText, list } = props

  return (
    <div className="bg-background relative">
      <motion.div
        className="bg-background-neutral p-site"
        initial="initial"
        whileInView="animate"
        variants={{
          initial: {
            clipPath: `inset(0rem round 0px)`,
          },
          animate: {
            clipPath: `inset(var(--spacing-site) round 24px)`,
            transition: { duration: 0.4, ease: 'easeInOut' },
          },
        }}
      >
        <div className="gap-md section py-site flex flex-col items-center overflow-hidden">
          {richText && (
            <RichText className="mx-auto text-center" data={richText} enableGutter={false} />
          )}
          {list && (
            <div className="gap-md grid w-full max-w-[calc(100vw-(--spacing-(site)*4))] grid-cols-1 md:grid-cols-2 lg:grid-cols-4">
              {list.map((item) => (
                <div key={item.id} className="gap-md flex flex-col items-center rounded-lg">
                  {item.icon && (
                    <div className="bg-primary inline-flex w-fit rounded-full p-5">
                      <Icon
                        icon={`ri:${item.icon}`}
                        className="text-primary-foreground size-10 leading-none"
                        height="none"
                      />
                    </div>
                  )}
                  <div className="flex flex-col items-center gap-2">
                    <h3 className="text-foreground-primary text-center text-(length:--text-body-large) font-bold">
                      {item.heading}
                    </h3>
                    {item.content && (
                      <RichText
                        className="prose-p:text-body-large m-0 text-center"
                        data={item.content}
                        enableGutter={false}
                      />
                    )}
                  </div>
                </div>
              ))}
            </div>
          )}
        </div>
      </motion.div>
    </div>
  )
}
